; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, %struct.bnx2_napi*, i32 }
%struct.bnx2_napi = type { %struct.bnx2*, i32 }
%struct.napi_struct = type opaque
%struct.napi_struct.2 = type opaque
%struct.napi_struct.0 = type opaque
%struct.napi_struct.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_init_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_napi(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2_napi*, align 8
  %5 = alloca i32 (%struct.napi_struct*, i32)*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 1
  %15 = load %struct.bnx2_napi*, %struct.bnx2_napi** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %15, i64 %17
  store %struct.bnx2_napi* %18, %struct.bnx2_napi** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 (%struct.napi_struct*, i32)* bitcast (i32 (%struct.napi_struct.0*, i32)* @bnx2_poll to i32 (%struct.napi_struct*, i32)*), i32 (%struct.napi_struct*, i32)** %5, align 8
  br label %23

22:                                               ; preds = %12
  store i32 (%struct.napi_struct*, i32)* bitcast (i32 (%struct.napi_struct.1*, i32)* @bnx2_poll_msix to i32 (%struct.napi_struct*, i32)*), i32 (%struct.napi_struct*, i32)** %5, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 1
  %29 = load %struct.bnx2_napi*, %struct.bnx2_napi** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %29, i64 %31
  %33 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %32, i32 0, i32 1
  %34 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %5, align 8
  %35 = bitcast i32 (%struct.napi_struct*, i32)* %34 to i32 (%struct.napi_struct.2*, i32)*
  %36 = call i32 @netif_napi_add(i32 %26, i32* %33, i32 (%struct.napi_struct.2*, i32)* %35, i32 64)
  %37 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %38 = load %struct.bnx2_napi*, %struct.bnx2_napi** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %38, i32 0, i32 0
  store %struct.bnx2* %37, %struct.bnx2** %39, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i32 @bnx2_poll(%struct.napi_struct.0*, i32) #1

declare dso_local i32 @bnx2_poll_msix(%struct.napi_struct.1*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32 (%struct.napi_struct.2*, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
