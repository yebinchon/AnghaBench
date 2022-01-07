; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_get_common_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_get_common_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to alloc tmp buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"info: Tx data rate set to %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"previously set fixed data rate %#x\09is not compatible with the network\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*, i64, i32*, i64)* @mwifiex_get_common_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_get_common_rates(%struct.mwifiex_private* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmemdup(i32* %18, i64 %19, i32 %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %5
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %27, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %132

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @memset(i32* %33, i32 0, i64 %34)
  store i64 0, i64* %15, align 8
  br label %36

36:                                               ; preds = %85, %32
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i1 [ false, %36 ], [ %45, %40 ]
  br i1 %47, label %48, label %88

48:                                               ; preds = %46
  store i64 0, i64* %16, align 8
  br label %49

49:                                               ; preds = %81, %48
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %53, %49
  %60 = phi i1 [ false, %49 ], [ %58, %53 ]
  br i1 %60, label %61, label %84

61:                                               ; preds = %59
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 127
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 127
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load i32*, i32** %14, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %84

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %49

84:                                               ; preds = %73, %59
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %15, align 8
  br label %36

88:                                               ; preds = %46
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @INFO, align 4
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %91, i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 127
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %128

115:                                              ; preds = %106
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %13, align 8
  br label %102

118:                                              ; preds = %102
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ERROR, align 4
  %123 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %124 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %121, i32 %122, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  store i32 -1, i32* %12, align 4
  br label %128

127:                                              ; preds = %88
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %118, %114
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @kfree(i32* %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %24
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
