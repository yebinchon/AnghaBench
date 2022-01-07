; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_parent* }
%struct.niu_parent = type { i64 }

@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@NIU_FLAGS_HOTPLUG_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_link(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 1
  %9 = load %struct.niu_parent*, %struct.niu_parent** %8, align 8
  store %struct.niu_parent* %9, %struct.niu_parent** %4, align 8
  %10 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %11 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = call i32 @niu_xcvr_init(%struct.niu* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %15
  %23 = call i32 @msleep(i32 200)
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = call i32 @niu_serdes_init(%struct.niu* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.niu*, %struct.niu** %3, align 8
  %31 = getelementptr inbounds %struct.niu, %struct.niu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %29, %24
  %39 = call i32 @msleep(i32 200)
  %40 = load %struct.niu*, %struct.niu** %3, align 8
  %41 = call i32 @niu_xcvr_init(%struct.niu* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.niu*, %struct.niu** %3, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %38
  %52 = load %struct.niu*, %struct.niu** %3, align 8
  %53 = call i32 @niu_link_status(%struct.niu* %52, i32* %6)
  br label %54

54:                                               ; preds = %51, %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %36, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @niu_xcvr_init(%struct.niu*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @niu_serdes_init(%struct.niu*) #1

declare dso_local i32 @niu_link_status(%struct.niu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
