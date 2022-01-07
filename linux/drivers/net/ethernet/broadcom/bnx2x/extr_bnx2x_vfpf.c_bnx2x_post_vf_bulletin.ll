; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_post_vf_bulletin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_post_vf_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.pf_vf_bulletin_content = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BULLETIN_CONTENT_SIZE = common dso_local global i32 0, align 4
@bulletin_map = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@VF_ENABLED = common dso_local global i32 0, align 4
@VF_ACQUIRED = common dso_local global i32 0, align 4
@cfg_flags = common dso_local global i32 0, align 4
@VF_CFG_EXT_BULLETIN = common dso_local global i32 0, align 4
@abs_vfid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_post_vf_bulletin(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_vf_bulletin_content*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %10, i32 %11)
  store %struct.pf_vf_bulletin_content* %12, %struct.pf_vf_bulletin_content** %6, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = call %struct.TYPE_2__* @BP_VF_BULLETIN_DMA(%struct.bnx2x* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BULLETIN_CONTENT_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @bulletin_map, align 4
  %24 = call i32 @bnx2x_vf(%struct.bnx2x* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @state, align 4
  %28 = call i32 @bnx2x_vf(%struct.bnx2x* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @VF_ENABLED, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @state, align 4
  %35 = call i32 @bnx2x_vf(%struct.bnx2x* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @VF_ACQUIRED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %71

39:                                               ; preds = %31, %2
  %40 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %41 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @cfg_flags, align 4
  %48 = call i32 @bnx2x_vf(%struct.bnx2x* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @VF_CFG_EXT_BULLETIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = call i32 @bnx2x_vf_bulletin_finalize(%struct.pf_vf_bulletin_content* %44, i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @abs_vfid, align 4
  %60 = call i32 @bnx2x_vf(%struct.bnx2x* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @U64_HI(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @U64_LO(i32 %63)
  %65 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %66 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = call i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x* %55, i32 0, i32 %56, i32 %60, i32 %62, i32 %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %39, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

declare dso_local %struct.TYPE_2__* @BP_VF_BULLETIN_DMA(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_bulletin_finalize(%struct.pf_vf_bulletin_content*, i32) #1

declare dso_local i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
