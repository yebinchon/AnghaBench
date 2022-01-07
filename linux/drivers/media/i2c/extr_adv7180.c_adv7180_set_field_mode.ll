; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_field_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_field_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_FLAG_I2P = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@ADV7180_FLAG_MIPI_CSI2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*)* @adv7180_set_field_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_set_field_mode(%struct.adv7180_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7180_state*, align 8
  store %struct.adv7180_state* %0, %struct.adv7180_state** %3, align 8
  %4 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %5 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ADV7180_FLAG_I2P, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %15 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %21 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %30 = call i32 @adv7180_csi_write(%struct.adv7180_state* %29, i32 1, i32 32)
  %31 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %32 = call i32 @adv7180_csi_write(%struct.adv7180_state* %31, i32 2, i32 40)
  %33 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %34 = call i32 @adv7180_csi_write(%struct.adv7180_state* %33, i32 3, i32 56)
  %35 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %36 = call i32 @adv7180_csi_write(%struct.adv7180_state* %35, i32 4, i32 48)
  %37 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %38 = call i32 @adv7180_csi_write(%struct.adv7180_state* %37, i32 5, i32 48)
  %39 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %40 = call i32 @adv7180_csi_write(%struct.adv7180_state* %39, i32 6, i32 128)
  %41 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %42 = call i32 @adv7180_csi_write(%struct.adv7180_state* %41, i32 7, i32 112)
  %43 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %44 = call i32 @adv7180_csi_write(%struct.adv7180_state* %43, i32 8, i32 80)
  br label %45

45:                                               ; preds = %28, %19
  %46 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %47 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %46, i32 163, i32 0)
  %48 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %49 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %48, i32 91, i32 0)
  %50 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %51 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %50, i32 85, i32 128)
  br label %85

52:                                               ; preds = %13
  %53 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %54 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ADV7180_FLAG_MIPI_CSI2, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %52
  %62 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %63 = call i32 @adv7180_csi_write(%struct.adv7180_state* %62, i32 1, i32 24)
  %64 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %65 = call i32 @adv7180_csi_write(%struct.adv7180_state* %64, i32 2, i32 24)
  %66 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %67 = call i32 @adv7180_csi_write(%struct.adv7180_state* %66, i32 3, i32 48)
  %68 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %69 = call i32 @adv7180_csi_write(%struct.adv7180_state* %68, i32 4, i32 32)
  %70 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %71 = call i32 @adv7180_csi_write(%struct.adv7180_state* %70, i32 5, i32 40)
  %72 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %73 = call i32 @adv7180_csi_write(%struct.adv7180_state* %72, i32 6, i32 64)
  %74 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %75 = call i32 @adv7180_csi_write(%struct.adv7180_state* %74, i32 7, i32 88)
  %76 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %77 = call i32 @adv7180_csi_write(%struct.adv7180_state* %76, i32 8, i32 48)
  br label %78

78:                                               ; preds = %61, %52
  %79 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %80 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %79, i32 163, i32 112)
  %81 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %82 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %81, i32 91, i32 128)
  %83 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %84 = call i32 @adv7180_vpp_write(%struct.adv7180_state* %83, i32 85, i32 0)
  br label %85

85:                                               ; preds = %78, %45
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @adv7180_csi_write(%struct.adv7180_state*, i32, i32) #1

declare dso_local i32 @adv7180_vpp_write(%struct.adv7180_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
