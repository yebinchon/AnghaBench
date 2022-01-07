; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_aldps_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_aldps_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OCP_POWER_CFG = common dso_local global i32 0, align 4
@EN_ALDPS = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8153_aldps_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_aldps_en(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = load i32, i32* @OCP_POWER_CFG, align 4
  %9 = call i32 @ocp_reg_read(%struct.r8152* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @EN_ALDPS, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.r8152*, %struct.r8152** %3, align 8
  %17 = load i32, i32* @OCP_POWER_CFG, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ocp_reg_write(%struct.r8152* %16, i32 %17, i32 %18)
  br label %45

20:                                               ; preds = %2
  %21 = load i32, i32* @EN_ALDPS, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.r8152*, %struct.r8152** %3, align 8
  %26 = load i32, i32* @OCP_POWER_CFG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ocp_reg_write(%struct.r8152* %25, i32 %26, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 20
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  %34 = load %struct.r8152*, %struct.r8152** %3, align 8
  %35 = load i32, i32* @MCU_TYPE_PLA, align 4
  %36 = call i32 @ocp_read_word(%struct.r8152* %34, i32 %35, i32 57344)
  %37 = and i32 %36, 256
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %39, %29
  br label %45

45:                                               ; preds = %44, %12
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.r8152*, %struct.r8152** %3, align 8
  %48 = getelementptr inbounds %struct.r8152, %struct.r8152* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  ret void
}

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
