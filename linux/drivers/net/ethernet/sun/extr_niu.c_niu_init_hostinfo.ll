; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_hostinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_hostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64, %struct.niu_parent* }
%struct.niu_parent = type { %struct.niu_rdc_tables* }
%struct.niu_rdc_tables = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_hostinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_hostinfo(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca %struct.niu_rdc_tables*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load %struct.niu_parent*, %struct.niu_parent** %11, align 8
  store %struct.niu_parent* %12, %struct.niu_parent** %4, align 8
  %13 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %14 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %13, i32 0, i32 0
  %15 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %14, align 8
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %15, i64 %18
  store %struct.niu_rdc_tables* %19, %struct.niu_rdc_tables** %5, align 8
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = call i32 @niu_num_alt_addr(%struct.niu* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %5, align 8
  %23 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @niu_set_primary_mac_rdc_table(%struct.niu* %25, i32 %26, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.niu*, %struct.niu** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @niu_set_multicast_mac_rdc_table(%struct.niu* %33, i32 %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.niu*, %struct.niu** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @niu_set_alt_mac_rdc_table(%struct.niu* %46, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %41

58:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %38, %30
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @niu_num_alt_addr(%struct.niu*) #1

declare dso_local i32 @niu_set_primary_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_multicast_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_alt_mac_rdc_table(%struct.niu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
