; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nfp_prog = type { i32 }

@OP_CMD_A_SRC = common dso_local global i32 0, align 4
@OP_CMD_CTX = common dso_local global i32 0, align 4
@OP_CMD_B_SRC = common dso_local global i32 0, align 4
@OP_CMD_TOKEN = common dso_local global i32 0, align 4
@cmd_tgt_act = common dso_local global %struct.TYPE_2__* null, align 8
@OP_CMD_XFER = common dso_local global i32 0, align 4
@OP_CMD_CNT = common dso_local global i32 0, align 4
@OP_CMD_SIG = common dso_local global i32 0, align 4
@CMD_CTX_NO_SWAP = common dso_local global i32 0, align 4
@OP_CMD_TGT_CMD = common dso_local global i32 0, align 4
@OP_CMD_INDIR = common dso_local global i32 0, align 4
@OP_CMD_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32)* @__emit_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__emit_cmd(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.nfp_prog*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* @OP_CMD_A_SRC, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @FIELD_PREP(i32 %20, i32 %21)
  %23 = load i32, i32* @OP_CMD_CTX, align 4
  %24 = load i32, i32* %17, align 4
  %25 = call i32 @FIELD_PREP(i32 %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = load i32, i32* @OP_CMD_B_SRC, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @FIELD_PREP(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32, i32* @OP_CMD_TOKEN, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmd_tgt_act, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FIELD_PREP(i32 %31, i32 %37)
  %39 = or i32 %30, %38
  %40 = load i32, i32* @OP_CMD_XFER, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @FIELD_PREP(i32 %40, i32 %41)
  %43 = or i32 %39, %42
  %44 = load i32, i32* @OP_CMD_CNT, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @FIELD_PREP(i32 %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = load i32, i32* @OP_CMD_SIG, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @CMD_CTX_NO_SWAP, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @FIELD_PREP(i32 %48, i32 %52)
  %54 = or i32 %47, %53
  %55 = load i32, i32* @OP_CMD_TGT_CMD, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmd_tgt_act, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FIELD_PREP(i32 %55, i32 %61)
  %63 = or i32 %54, %62
  %64 = load i32, i32* @OP_CMD_INDIR, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @FIELD_PREP(i32 %64, i32 %65)
  %67 = or i32 %63, %66
  %68 = load i32, i32* @OP_CMD_MODE, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @FIELD_PREP(i32 %68, i32 %69)
  %71 = or i32 %67, %70
  store i32 %71, i32* %19, align 4
  %72 = load %struct.nfp_prog*, %struct.nfp_prog** %10, align 8
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @nfp_prog_push(%struct.nfp_prog* %72, i32 %73)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @nfp_prog_push(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
