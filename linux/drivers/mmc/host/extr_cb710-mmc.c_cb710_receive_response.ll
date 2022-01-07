; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_receive_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_receive_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }
%struct.mmc_command = type { i32, i32*, i32, i32 }

@MMC_RSP_136 = common dso_local global i32 0, align 4
@CB710_MMC_RESPONSE3_PORT = common dso_local global i32 0, align 4
@CB710_MMC_RESPONSE2_PORT = common dso_local global i32 0, align 4
@CB710_MMC_RESPONSE1_PORT = common dso_local global i32 0, align 4
@CB710_MMC_RESPONSE0_PORT = common dso_local global i32 0, align 4
@MMC_RSP_OPCODE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*, %struct.mmc_command*)* @cb710_receive_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_receive_response(%struct.cb710_slot* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MMC_RSP_136, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %2
  %15 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %16 = load i32, i32* @CB710_MMC_RESPONSE3_PORT, align 4
  %17 = call i32 @cb710_read_port_32(%struct.cb710_slot* %15, i32 %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %20 = load i32, i32* @CB710_MMC_RESPONSE2_PORT, align 4
  %21 = call i32 @cb710_read_port_32(%struct.cb710_slot* %19, i32 %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %24 = load i32, i32* @CB710_MMC_RESPONSE1_PORT, align 4
  %25 = call i32 @cb710_read_port_32(%struct.cb710_slot* %23, i32 %24)
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %28 = load i32, i32* @CB710_MMC_RESPONSE0_PORT, align 4
  %29 = call i32 @cb710_read_port_32(%struct.cb710_slot* %27, i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = ashr i32 %32, 24
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = or i32 %36, %39
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 24
  %51 = or i32 %47, %50
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %51, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 24
  %62 = or i32 %58, %61
  %63 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %62, i32* %66, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %69, i32* %73, align 4
  br label %86

74:                                               ; preds = %2
  %75 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %76 = load i32, i32* @CB710_MMC_RESPONSE1_PORT, align 4
  %77 = call i32 @cb710_read_port_32(%struct.cb710_slot* %75, i32 %76)
  %78 = and i32 %77, 63
  store i32 %78, i32* %5, align 4
  %79 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %80 = load i32, i32* @CB710_MMC_RESPONSE0_PORT, align 4
  %81 = call i32 @cb710_read_port_32(%struct.cb710_slot* %79, i32 %80)
  %82 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %74, %14
  %87 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MMC_RSP_OPCODE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ %96, %93 ], [ 63, %97 ]
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @EILSEQ, align 4
  %105 = sub nsw i32 0, %104
  %106 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %98
  ret void
}

declare dso_local i32 @cb710_read_port_32(%struct.cb710_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
