; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_phy_type_prop_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_phy_type_prop_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"mif\00", align 1
@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@MAC_XCVR_MII = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"xgf\00", align 1
@MAC_XCVR_XPCS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"pcs\00", align 1
@MAC_XCVR_PCS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"xgc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"xgsd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gsd\00", align 1
@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i8*)* @niu_phy_type_prop_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_phy_type_prop_decode(%struct.niu* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i8*, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %11 = load i32, i32* @NIU_FLAGS_10G, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.niu*, %struct.niu** %4, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i8*, i8** @MAC_XCVR_MII, align 8
  %19 = load %struct.niu*, %struct.niu** %4, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %109

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @NIU_FLAGS_10G, align 4
  %27 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.niu*, %struct.niu** %4, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i8*, i8** @MAC_XCVR_XPCS, align 8
  %34 = load %struct.niu*, %struct.niu** %4, align 8
  %35 = getelementptr inbounds %struct.niu, %struct.niu* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %108

36:                                               ; preds = %21
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @NIU_FLAGS_10G, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.niu*, %struct.niu** %4, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %48 = load %struct.niu*, %struct.niu** %4, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i8*, i8** @MAC_XCVR_PCS, align 8
  %53 = load %struct.niu*, %struct.niu** %4, align 8
  %54 = getelementptr inbounds %struct.niu, %struct.niu* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %107

55:                                               ; preds = %36
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @NIU_FLAGS_10G, align 4
  %61 = load %struct.niu*, %struct.niu** %4, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.niu*, %struct.niu** %4, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i8*, i8** @MAC_XCVR_XPCS, align 8
  %72 = load %struct.niu*, %struct.niu** %4, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %106

74:                                               ; preds = %55
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @NIU_FLAGS_10G, align 4
  %84 = load %struct.niu*, %struct.niu** %4, align 8
  %85 = getelementptr inbounds %struct.niu, %struct.niu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.niu*, %struct.niu** %4, align 8
  %91 = getelementptr inbounds %struct.niu, %struct.niu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %95 = load %struct.niu*, %struct.niu** %4, align 8
  %96 = getelementptr inbounds %struct.niu, %struct.niu* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i8*, i8** @MAC_XCVR_XPCS, align 8
  %100 = load %struct.niu*, %struct.niu** %4, align 8
  %101 = getelementptr inbounds %struct.niu, %struct.niu* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %105

102:                                              ; preds = %78
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %110

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105, %59
  br label %107

107:                                              ; preds = %106, %40
  br label %108

108:                                              ; preds = %107, %25
  br label %109

109:                                              ; preds = %108, %9
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
