; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_settxpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_settxpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pa_cfg_sfr = type { i32 }

@CA8210_MAC_MPW = common dso_local global i64 0, align 8
@CA8210_SFR_PACFG = common dso_local global i32 0, align 4
@CA8210_SFR_PACFGIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tdme_settxpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdme_settxpower(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.pa_cfg_sfr, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 63, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 192
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @CA8210_MAC_MPW, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 3, i32* %25, align 4
  %26 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 5, i32* %26, align 4
  %27 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 1, i32* %27, align 4
  br label %32

28:                                               ; preds = %21
  %29 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 3, i32* %29, align 4
  %30 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 7, i32* %30, align 4
  %31 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @CA8210_SFR_PACFG, align 4
  %34 = bitcast %union.pa_cfg_sfr* %8 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @tdme_setsfr_request_sync(i32 0, i32 %33, i32 %35, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %105

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 63, i32* %42, align 4
  br label %99

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 50, i32* %47, align 4
  br label %98

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 34, i32* %52, align 4
  br label %97

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 24, i32* %57, align 4
  br label %96

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 16, i32* %62, align 4
  br label %95

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 12, i32* %67, align 4
  br label %94

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 8, i32* %72, align 4
  br label %93

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 5, i32* %77, align 4
  br label %92

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 3, i32* %82, align 4
  br label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 1, i32* %87, align 4
  br label %90

88:                                               ; preds = %83
  %89 = bitcast %union.pa_cfg_sfr* %8 to i32*
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %56
  br label %97

97:                                               ; preds = %96, %51
  br label %98

98:                                               ; preds = %97, %46
  br label %99

99:                                               ; preds = %98, %41
  %100 = load i32, i32* @CA8210_SFR_PACFGIB, align 4
  %101 = bitcast %union.pa_cfg_sfr* %8 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @tdme_setsfr_request_sync(i32 0, i32 %100, i32 %102, i8* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %32
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @tdme_setsfr_request_sync(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
