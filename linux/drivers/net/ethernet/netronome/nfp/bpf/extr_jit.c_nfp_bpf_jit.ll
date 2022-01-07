; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_bpf_jit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_bpf_jit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Translation failed with error %d (translated: %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_jit(%struct.nfp_prog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  %5 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %6 = call i32 @nfp_bpf_replace_map_ptrs(%struct.nfp_prog* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %13 = call i32 @nfp_bpf_optimize(%struct.nfp_prog* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %11
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %20 = call i32 @nfp_translate(%struct.nfp_prog* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %26 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %33 = call i32 @nfp_bpf_prog_trim(%struct.nfp_prog* %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %23, %16, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nfp_bpf_replace_map_ptrs(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_bpf_optimize(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_translate(%struct.nfp_prog*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @nfp_bpf_prog_trim(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
