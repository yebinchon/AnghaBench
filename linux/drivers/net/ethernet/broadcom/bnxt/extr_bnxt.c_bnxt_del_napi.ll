; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_del_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_del_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_del_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_del_napi(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 1
  %7 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %6, align 8
  %8 = icmp ne %struct.bnxt_napi** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %31, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 1
  %20 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %20, i64 %22
  %24 = load %struct.bnxt_napi*, %struct.bnxt_napi** %23, align 8
  store %struct.bnxt_napi* %24, %struct.bnxt_napi** %4, align 8
  %25 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %25, i32 0, i32 0
  %27 = call i32 @napi_hash_del(i32* %26)
  %28 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %28, i32 0, i32 0
  %30 = call i32 @netif_napi_del(i32* %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %11

34:                                               ; preds = %11
  %35 = call i32 (...) @synchronize_net()
  br label %36

36:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @napi_hash_del(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
