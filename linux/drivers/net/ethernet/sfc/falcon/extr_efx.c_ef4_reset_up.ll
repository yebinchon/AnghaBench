; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialise NIC\0A\00", align 1
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not restore PHY settings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_reset_up(%struct.ef4_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = call i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic* %9)
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %14, align 8
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %17 = call i32 %15(%struct.ef4_nic* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %22 = load i32, i32* @drv, align 4
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %24 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_err(%struct.ef4_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %98

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %98

31:                                               ; preds = %27
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %33 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %46 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %48, align 8
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %51 = call i32 %49(%struct.ef4_nic* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %98

55:                                               ; preds = %44
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %57 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %59, align 8
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %62 = call i32 %60(%struct.ef4_nic* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %72 = load i32, i32* @drv, align 4
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %74 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @netif_err(%struct.ef4_nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %65, %55
  br label %78

78:                                               ; preds = %77, %40, %36, %31
  %79 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %80 = call i32 @ef4_enable_interrupts(%struct.ef4_nic* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %98

84:                                               ; preds = %78
  %85 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %86 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %85, i32 0, i32 2
  %87 = call i32 @down_read(i32* %86)
  %88 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %89 = call i32 @ef4_restore_filters(%struct.ef4_nic* %88)
  %90 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %91 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %90, i32 0, i32 2
  %92 = call i32 @up_read(i32* %91)
  %93 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %94 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %97 = call i32 @ef4_start_all(%struct.ef4_nic* %96)
  store i32 0, i32* %4, align 4
  br label %105

98:                                               ; preds = %83, %54, %30, %20
  %99 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %100 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %102 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %84
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @EF4_ASSERT_RESET_SERIALISED(%struct.ef4_nic*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_enable_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ef4_restore_filters(%struct.ef4_nic*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ef4_start_all(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
