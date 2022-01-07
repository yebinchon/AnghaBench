; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_init_command_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_init_command_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32 }
%struct.fjes_device_command_param = type { i32, i32, i32, i64, i64 }

@XSCT_REQBL = common dso_local global i32 0, align 4
@XSCT_RESPBL = common dso_local global i32 0, align 4
@XSCT_REQBAL = common dso_local global i32 0, align 4
@XSCT_REQBAH = common dso_local global i32 0, align 4
@XSCT_RESPBAL = common dso_local global i32 0, align 4
@XSCT_RESPBAH = common dso_local global i32 0, align 4
@XSCT_SHSTSAL = common dso_local global i32 0, align 4
@XSCT_SHSTSAH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fjes_hw_init_command_registers(%struct.fjes_hw* %0, %struct.fjes_device_command_param* %1) #0 {
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca %struct.fjes_device_command_param*, align 8
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  store %struct.fjes_device_command_param* %1, %struct.fjes_device_command_param** %4, align 8
  %5 = load i32, i32* @XSCT_REQBL, align 4
  %6 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %7 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @wr32(i32 %5, i32 %9)
  %11 = load i32, i32* @XSCT_RESPBL, align 4
  %12 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %13 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @wr32(i32 %11, i32 %15)
  %17 = load i32, i32* @XSCT_REQBAL, align 4
  %18 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %19 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GENMASK_ULL(i32 31, i32 0)
  %22 = and i32 %20, %21
  %23 = call i32 @wr32(i32 %17, i32 %22)
  %24 = load i32, i32* @XSCT_REQBAH, align 4
  %25 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %26 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @GENMASK_ULL(i32 63, i32 32)
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 32
  %31 = call i32 @wr32(i32 %24, i32 %30)
  %32 = load i32, i32* @XSCT_RESPBAL, align 4
  %33 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %34 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GENMASK_ULL(i32 31, i32 0)
  %37 = and i32 %35, %36
  %38 = call i32 @wr32(i32 %32, i32 %37)
  %39 = load i32, i32* @XSCT_RESPBAH, align 4
  %40 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %41 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GENMASK_ULL(i32 63, i32 32)
  %44 = and i32 %42, %43
  %45 = ashr i32 %44, 32
  %46 = call i32 @wr32(i32 %39, i32 %45)
  %47 = load i32, i32* @XSCT_SHSTSAL, align 4
  %48 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %49 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GENMASK_ULL(i32 31, i32 0)
  %52 = and i32 %50, %51
  %53 = call i32 @wr32(i32 %47, i32 %52)
  %54 = load i32, i32* @XSCT_SHSTSAH, align 4
  %55 = load %struct.fjes_device_command_param*, %struct.fjes_device_command_param** %4, align 8
  %56 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @GENMASK_ULL(i32 63, i32 32)
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 32
  %61 = call i32 @wr32(i32 %54, i32 %60)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
