; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_func_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_func_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i64, %struct.dmae_command }
%struct.dmae_command = type { i32, i32, i32, i8*, i8*, i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"BUG!\0A\00", align 1
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@DMAE_COMP_PCI = common dso_local global i32 0, align 4
@func_stats = common dso_local global i64* null, align 8
@DMAE_COMP_VAL = common dso_local global i32 0, align 4
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_func_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_func_stats_init(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.dmae_command*, align 8
  %4 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %5, i32 0, i32 2
  store %struct.dmae_command* %6, %struct.dmae_command** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = ptrtoint i64* %8 to i32
  %10 = call i64* @bnx2x_sp(%struct.bnx2x* %7, i32 %9)
  store i64* %10, i64** %4, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %21 = call i32 @memset(%struct.dmae_command* %20, i32 0, i32 64)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = load i32, i32* @DMAE_SRC_PCI, align 4
  %24 = load i32, i32* @DMAE_DST_GRC, align 4
  %25 = load i32, i32* @DMAE_COMP_PCI, align 4
  %26 = call i32 @bnx2x_dmae_opcode(%struct.bnx2x* %22, i32 %23, i32 %24, i32 1, i32 %25)
  %27 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %28 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = load i64*, i64** @func_stats, align 8
  %31 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %29, i64* %30)
  %32 = call i8* @U64_LO(i32 %31)
  %33 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %34 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = load i64*, i64** @func_stats, align 8
  %37 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %35, i64* %36)
  %38 = call i8* @U64_HI(i32 %37)
  %39 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %40 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 2
  %45 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %46 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %48 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %50 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %51, i64* %52)
  %54 = call i8* @U64_LO(i32 %53)
  %55 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %56 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %58 = load i64*, i64** %4, align 8
  %59 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %57, i64* %58)
  %60 = call i8* @U64_HI(i32 %59)
  %61 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %62 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @DMAE_COMP_VAL, align 4
  %64 = load %struct.dmae_command*, %struct.dmae_command** %3, align 8
  %65 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i64*, i64** %4, align 8
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %17, %15
  ret void
}

declare dso_local i64* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @memset(%struct.dmae_command*, i32, i32) #1

declare dso_local i32 @bnx2x_dmae_opcode(%struct.bnx2x*, i32, i32, i32, i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i64*) #1

declare dso_local i8* @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
