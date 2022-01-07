; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_update_ampdu_rxwinsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_update_ampdu_rxwinsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i64, i64, %struct.mwifiex_private**, i32 }
%struct.mwifiex_private = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Update rxwinsize %d\0A\00", align 1
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MWIFIEX_STA_COEX_AMPDU_DEF_RXWINSIZE = common dso_local global i8* null, align 8
@MWIFIEX_BSS_TYPE_P2P = common dso_local global i64 0, align 8
@MWIFIEX_BSS_TYPE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_UAP_COEX_AMPDU_DEF_RXWINSIZE = common dso_local global i64 0, align 8
@MWIFIEX_STA_AMPDU_DEF_RXWINSIZE = common dso_local global i8* null, align 8
@MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE = common dso_local global i64 0, align 8
@MAX_NUM_TID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, i32)* @mwifiex_update_ampdu_rxwinsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_update_ampdu_rxwinsize(%struct.mwifiex_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %157, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %160

19:                                               ; preds = %13
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 3
  %22 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %22, i64 %23
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %24, align 8
  %26 = icmp ne %struct.mwifiex_private* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %157

28:                                               ; preds = %19
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 3
  %31 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %31, i64 %32
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %33, align 8
  store %struct.mwifiex_private* %34, %struct.mwifiex_private** %7, align 8
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %28
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i8*, i8** @MWIFIEX_STA_COEX_AMPDU_DEF_RXWINSIZE, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MWIFIEX_BSS_TYPE_P2P, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i8*, i8** @MWIFIEX_STA_COEX_AMPDU_DEF_RXWINSIZE, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MWIFIEX_BSS_TYPE_UAP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* @MWIFIEX_UAP_COEX_AMPDU_DEF_RXWINSIZE, align 8
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  br label %113

77:                                               ; preds = %28
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8*, i8** @MWIFIEX_STA_AMPDU_DEF_RXWINSIZE, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %87 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MWIFIEX_BSS_TYPE_P2P, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** @MWIFIEX_STA_AMPDU_DEF_RXWINSIZE, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %99 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %103 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MWIFIEX_BSS_TYPE_UAP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i64, i64* @MWIFIEX_UAP_AMPDU_DEF_RXWINSIZE, align 8
  %109 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %110 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %128 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  br label %130

130:                                              ; preds = %123, %118, %113
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %133 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %131, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %130
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %157

143:                                              ; preds = %137
  store i64 0, i64* %5, align 8
  br label %144

144:                                              ; preds = %152, %143
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @MAX_NUM_TID, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @mwifiex_11n_delba(%struct.mwifiex_private* %149, i64 %150)
  br label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %5, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %5, align 8
  br label %144

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %142, %27
  %158 = load i64, i64* %5, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %5, align 8
  br label %13

160:                                              ; preds = %13
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mwifiex_11n_delba(%struct.mwifiex_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
