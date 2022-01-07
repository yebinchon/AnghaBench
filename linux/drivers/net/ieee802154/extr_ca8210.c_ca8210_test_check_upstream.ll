; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_check_upstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_check_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CA8210_SPI_BUF_SIZE = common dso_local global i32 0, align 4
@SPI_MLME_SET_REQUEST = common dso_local global i32 0, align 4
@SPI_MLME_SET_CONFIRM = common dso_local global i32 0, align 4
@MAC_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SPI_MLME_ASSOCIATE_REQUEST = common dso_local global i32 0, align 4
@SPI_MLME_START_REQUEST = common dso_local global i32 0, align 4
@PHY_CURRENT_CHANNEL = common dso_local global i32 0, align 4
@SPI_TDME_SET_REQUEST = common dso_local global i32 0, align 4
@TDME_CHANNEL = common dso_local global i32 0, align 4
@CA8210_MAC_WORKAROUNDS = common dso_local global i64 0, align 8
@SPI_MLME_RESET_REQUEST = common dso_local global i32 0, align 4
@CA8210_SFR_MACCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ca8210_test_check_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_test_check_upstream(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @CA8210_SPI_BUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SPI_MLME_SET_REQUEST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = call i32 @tdme_checkpibattribute(i32 %22, i32 %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %19
  %32 = load i32, i32* @SPI_MLME_SET_CONFIRM, align 4
  %33 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 3, i32* %34, align 4
  %35 = load i32, i32* @MAC_INVALID_PARAMETER, align 4
  %36 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %13, i64 4
  store i32 %43, i32* %44, align 16
  br i1 true, label %45, label %48

45:                                               ; preds = %31
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @cascoda_api_upstream(i32* %13, i32 5, i8* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

50:                                               ; preds = %19
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPI_MLME_ASSOCIATE_REQUEST, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @tdme_channelinit(i32 %60, i8* %61)
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

63:                                               ; preds = %51
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SPI_MLME_START_REQUEST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @tdme_channelinit(i32 %72, i8* %73)
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

75:                                               ; preds = %63
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SPI_MLME_SET_REQUEST, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PHY_CURRENT_CHANNEL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @tdme_channelinit(i32 %90, i8* %91)
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

93:                                               ; preds = %81, %75
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SPI_TDME_SET_REQUEST, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TDME_CHANNEL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 @tdme_channelinit(i32 %108, i8* %109)
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

111:                                              ; preds = %99, %93
  %112 = load i64, i64* @CA8210_MAC_WORKAROUNDS, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SPI_MLME_RESET_REQUEST, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @CA8210_SFR_MACCON, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @tdme_setsfr_request_sync(i32 0, i32 %126, i32 0, i8* %127)
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

129:                                              ; preds = %120, %114, %111
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %125, %105, %87, %69, %57, %48
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tdme_checkpibattribute(i32, i32, i32*) #2

declare dso_local i32 @cascoda_api_upstream(i32*, i32, i8*) #2

declare dso_local i32 @tdme_channelinit(i32, i8*) #2

declare dso_local i32 @tdme_setsfr_request_sync(i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
