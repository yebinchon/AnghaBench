; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_bpf_prog_trim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_bpf_prog_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_bpf_prog_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_bpf_prog_trim(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  %3 = alloca i8*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %4 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kvmalloc_array(i32 %6, i32 4, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %14 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %23 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i8* %21, i8* %24, i32 %27)
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %30 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @kvfree(i8* %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %35 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %12, %11
  ret void
}

declare dso_local i8* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
