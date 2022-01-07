; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_tcam_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_tcam_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@DEFAULT_TCAM_LATENCY = common dso_local global i32 0, align 4
@DEFAULT_TCAM_ACCESS_RATIO = common dso_local global i32 0, align 4
@CLASS_CODE_ETHERTYPE1 = common dso_local global i64 0, align 8
@CLASS_CODE_ETHERTYPE2 = common dso_local global i64 0, align 8
@CLASS_CODE_USER_PROG1 = common dso_local global i64 0, align 8
@CLASS_CODE_USER_PROG4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @tcam_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcam_early_init(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = call i32 @tcam_enable(%struct.niu* %6, i32 0)
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = load i32, i32* @DEFAULT_TCAM_LATENCY, align 4
  %10 = load i32, i32* @DEFAULT_TCAM_ACCESS_RATIO, align 4
  %11 = call i32 @tcam_set_lat_and_ratio(%struct.niu* %8, i32 %9, i32 %10)
  %12 = load i64, i64* @CLASS_CODE_ETHERTYPE1, align 8
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @CLASS_CODE_ETHERTYPE2, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @tcam_user_eth_class_enable(%struct.niu* %18, i64 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %48

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %44, %29
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @CLASS_CODE_USER_PROG4, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.niu*, %struct.niu** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @tcam_user_ip_class_enable(%struct.niu* %36, i64 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %31

47:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %41, %23
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @tcam_enable(%struct.niu*, i32) #1

declare dso_local i32 @tcam_set_lat_and_ratio(%struct.niu*, i32, i32) #1

declare dso_local i32 @tcam_user_eth_class_enable(%struct.niu*, i64, i32) #1

declare dso_local i32 @tcam_user_ip_class_enable(%struct.niu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
