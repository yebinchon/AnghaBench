; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_read_ssr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_read_ssr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_6__, i32, i32*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CCC_APP_SPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: card lacks mandatory SD Status function\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: problem reading SD Status register\0A\00", align 1
@sd_au_size = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: SD Status: Invalid Allocation Unit size\0A\00", align 1
@SD_DISCARD_ARG = common dso_local global i32 0, align 4
@SD_ERASE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_read_ssr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_read_ssr(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %12 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CCC_APP_SPEC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mmc_hostname(i32 %23)
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %2, align 4
  br label %161

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kmalloc(i32 8, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %161

34:                                               ; preds = %26
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @mmc_app_sd_status(%struct.mmc_card* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mmc_hostname(i32 %42)
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @kfree(i32* %45)
  store i32 0, i32* %2, align 4
  br label %161

47:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %71 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @UNSTUFF_BITS(i32* %72, i32 44, i32 4)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %136

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = icmp ule i32 %78, 9
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %80, %77
  %87 = load i32*, i32** @sd_au_size, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %93 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %96 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i8* @UNSTUFF_BITS(i32* %97, i32 24, i32 16)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %101 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i8* @UNSTUFF_BITS(i32* %102, i32 18, i32 6)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %86
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @UNSTUFF_BITS(i32* %113, i32 16, i32 2)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = mul i32 %116, 1000
  %118 = load i32, i32* %5, align 4
  %119 = udiv i32 %117, %118
  %120 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %121 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul i32 %123, 1000
  %125 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %126 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %110, %107, %86
  br label %135

129:                                              ; preds = %80
  %130 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %131 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mmc_hostname(i32 %132)
  %134 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %129, %128
  br label %136

136:                                              ; preds = %135, %67
  %137 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %138 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 6
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %144 = call i8* @UNSTUFF_BITS(i32* %143, i32 25, i32 1)
  store i8* %144, i8** %10, align 8
  %145 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %146 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %136
  %151 = load i8*, i8** %10, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* @SD_DISCARD_ARG, align 4
  br label %157

155:                                              ; preds = %150, %136
  %156 = load i32, i32* @SD_ERASE_ARG, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %160 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %39, %31, %20
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_warn(i8*, i32) #2

declare dso_local i32 @mmc_hostname(i32) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i64 @mmc_app_sd_status(%struct.mmc_card*, i32*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i8* @UNSTUFF_BITS(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
