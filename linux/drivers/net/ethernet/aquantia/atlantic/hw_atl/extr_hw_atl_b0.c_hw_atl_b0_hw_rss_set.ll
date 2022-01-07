; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_rss_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_rss_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aq_rss_parameters = type { i32* }

@HW_ATL_B0_RSS_REDIRECTION_MAX = common dso_local global i32 0, align 4
@HW_ATL_B0_RSS_REDIRECTION_BITS = common dso_local global i32 0, align 4
@hw_atl_rpf_rss_redir_wr_en_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rss_parameters*)* @hw_atl_b0_hw_rss_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_rss_set(%struct.aq_hw_s* %0, %struct.aq_rss_parameters* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rss_parameters*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rss_parameters* %1, %struct.aq_rss_parameters** %4, align 8
  %12 = load %struct.aq_rss_parameters*, %struct.aq_rss_parameters** %4, align 8
  %13 = getelementptr inbounds %struct.aq_rss_parameters, %struct.aq_rss_parameters* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @max(i32 1, i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* @HW_ATL_B0_RSS_REDIRECTION_MAX, align 4
  %22 = load i32, i32* @HW_ATL_B0_RSS_REDIRECTION_BITS, align 4
  %23 = mul i32 %21, %22
  %24 = udiv i32 %23, 16
  %25 = add i32 1, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = mul nuw i64 4, %26
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %28, i32 0, i32 %30)
  %32 = load i32, i32* @HW_ATL_B0_RSS_REDIRECTION_MAX, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %37, %2
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = urem i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = mul i32 %45, 3
  %47 = and i32 %46, 15
  %48 = shl i32 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = mul i32 %49, 3
  %51 = udiv i32 %50, 16
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %28, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %48
  store i32 %55, i32* %53, align 4
  br label %33

56:                                               ; preds = %33
  %57 = call i32 @ARRAY_SIZE(i32* %28)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %84, %56
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %28, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hw_atl_rpf_rss_redir_tbl_wr_data_set(%struct.aq_hw_s* %63, i32 %67)
  %69 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @hw_atl_rpf_rss_redir_tbl_addr_set(%struct.aq_hw_s* %69, i32 %70)
  %72 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %73 = call i32 @hw_atl_rpf_rss_redir_wr_en_set(%struct.aq_hw_s* %72, i32 1)
  %74 = load i32, i32* @hw_atl_rpf_rss_redir_wr_en_get, align 4
  %75 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @readx_poll_timeout_atomic(i32 %74, %struct.aq_hw_s* %75, i32 %76, i32 %79, i32 1000, i32 10000)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %62
  br label %88

84:                                               ; preds = %62
  br label %58

85:                                               ; preds = %58
  %86 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %87 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hw_atl_rpf_rss_redir_tbl_wr_data_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_rss_redir_tbl_addr_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_rss_redir_wr_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
