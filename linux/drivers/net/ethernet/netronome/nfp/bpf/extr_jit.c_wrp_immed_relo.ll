; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_immed_relo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_immed_relo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"relocation of a large immediate!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IMMED_WIDTH_ALL = common dso_local global i32 0, align 4
@IMMED_SHIFT_0B = common dso_local global i32 0, align 4
@OP_RELO_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32)* @wrp_immed_relo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrp_immed_relo(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 65535
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  br label %38

17:                                               ; preds = %4
  %18 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IMMED_WIDTH_ALL, align 4
  %22 = load i32, i32* @IMMED_SHIFT_0B, align 4
  %23 = call i32 @emit_immed(%struct.nfp_prog* %18, i32 %19, i32 %20, i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* @OP_RELO_TYPE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @FIELD_PREP(i32 %24, i32 %25)
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %28 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %31 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %26
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @emit_immed(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
