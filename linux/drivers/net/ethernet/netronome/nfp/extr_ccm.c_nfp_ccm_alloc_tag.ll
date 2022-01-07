; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_alloc_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_alloc_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_ccm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"all FW request contexts busy!\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_ccm*)* @nfp_ccm_alloc_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ccm_alloc_tag(%struct.nfp_ccm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_ccm*, align 8
  store %struct.nfp_ccm* %0, %struct.nfp_ccm** %3, align 8
  %4 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %5 = call i32 @nfp_ccm_all_tags_busy(%struct.nfp_ccm* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ccm_warn(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__test_and_set_bit(i32 %18, i32 %21)
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %25 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_ccm_all_tags_busy(%struct.nfp_ccm*) #1

declare dso_local i32 @ccm_warn(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
