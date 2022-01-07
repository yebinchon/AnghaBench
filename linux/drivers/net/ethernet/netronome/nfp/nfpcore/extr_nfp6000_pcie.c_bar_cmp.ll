; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_bar_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_bar_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_bar = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @bar_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bar_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfp_bar*, align 8
  %7 = alloca %struct.nfp_bar*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nfp_bar*
  store %struct.nfp_bar* %9, %struct.nfp_bar** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfp_bar*
  store %struct.nfp_bar* %11, %struct.nfp_bar** %7, align 8
  %12 = load %struct.nfp_bar*, %struct.nfp_bar** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfp_bar*, %struct.nfp_bar** %7, align 8
  %16 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.nfp_bar*, %struct.nfp_bar** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nfp_bar*, %struct.nfp_bar** %7, align 8
  %24 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.nfp_bar*, %struct.nfp_bar** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nfp_bar*, %struct.nfp_bar** %7, align 8
  %32 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
