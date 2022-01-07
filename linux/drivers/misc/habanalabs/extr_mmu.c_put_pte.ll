; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_put_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_put_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i32 }
%struct.pgt_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_ctx*, i32)* @put_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_pte(%struct.hl_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pgt_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pgt_info* @get_pgt_info(%struct.hl_ctx* %7, i32 %8)
  store %struct.pgt_info* %9, %struct.pgt_info** %5, align 8
  %10 = load %struct.pgt_info*, %struct.pgt_info** %5, align 8
  %11 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.pgt_info*, %struct.pgt_info** %5, align 8
  %15 = getelementptr inbounds %struct.pgt_info, %struct.pgt_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.hl_ctx*, %struct.hl_ctx** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @free_hop(%struct.hl_ctx* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.pgt_info* @get_pgt_info(%struct.hl_ctx*, i32) #1

declare dso_local i32 @free_hop(%struct.hl_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
