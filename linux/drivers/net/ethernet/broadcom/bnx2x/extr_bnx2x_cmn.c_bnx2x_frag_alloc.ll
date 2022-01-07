; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_frag_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_frag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i64, i64 }

@NET_SKB_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bnx2x_fastpath*, i32)* @bnx2x_frag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bnx2x_frag_alloc(%struct.bnx2x_fastpath* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bnx2x_fastpath*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @gfpflags_allow_blocking(i32 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @__get_free_page(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %3, align 8
  br label %32

19:                                               ; preds = %10
  %20 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @napi_alloc_frag(i64 %22)
  store i8* %23, i8** %3, align 8
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NET_SKB_PAD, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @kmalloc(i64 %29, i32 %30)
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %24, %19, %15
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @napi_alloc_frag(i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
