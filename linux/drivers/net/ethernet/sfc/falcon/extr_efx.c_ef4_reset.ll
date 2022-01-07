; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ef4_nic*, i32)* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"resetting (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to reset hardware\0A\00", align 1
@RESET_TYPE_MAX_METHOD = common dso_local global i32 0, align 4
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@RESET_TYPE_RECOVER_OR_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"has been disabled\0A\00", align 1
@STATE_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"reset complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_reset(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @RESET_TYPE(i32 %13)
  %15 = call i32 @netif_info(%struct.ef4_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %17 = call i32 @ef4_device_detach_sync(%struct.ef4_nic* %16)
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ef4_reset_down(%struct.ef4_nic* %18, i32 %19)
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %22 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ef4_nic*, i32)*, i32 (%struct.ef4_nic*, i32)** %24, align 8
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.ef4_nic* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = load i32, i32* @drv, align 4
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %35 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_err(%struct.ef4_nic* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %61

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RESET_TYPE_MAX_METHOD, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  %45 = shl i32 1, %44
  %46 = sub nsw i32 0, %45
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %48 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %56

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %54 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %53, i32 0, i32 0
  %55 = call i32 @__clear_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %58 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pci_set_master(i32 %59)
  br label %61

61:                                               ; preds = %56, %31
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RESET_TYPE_RECOVER_OR_DISABLE, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %68, %64, %61
  %73 = phi i1 [ true, %64 ], [ true, %61 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @ef4_reset_up(%struct.ef4_nic* %75, i32 %76, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  store i32 1, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %95 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_close(i32 %96)
  %98 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %99 = load i32, i32* @drv, align 4
  %100 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %101 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netif_err(%struct.ef4_nic* %98, i32 %99, i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @STATE_DISABLED, align 4
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %106 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %118

107:                                              ; preds = %90
  %108 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %109 = load i32, i32* @drv, align 4
  %110 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %111 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @netif_dbg(%struct.ef4_nic* %108, i32 %109, i32 %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %115 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @netif_device_attach(i32 %116)
  br label %118

118:                                              ; preds = %107, %93
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @netif_info(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @RESET_TYPE(i32) #1

declare dso_local i32 @ef4_device_detach_sync(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reset_down(%struct.ef4_nic*, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @ef4_reset_up(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
