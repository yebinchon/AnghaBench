; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_read_revisions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_read_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 (...)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AR_SREV_VERSION_9100 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9330 = common dso_local global i32 0, align 4
@AR_SREV = common dso_local global i32 0, align 4
@AR_SREV_REVISION2 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9340 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9550 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9531 = common dso_local global i32 0, align 4
@AR_SREV_VERSION_9561 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read SREV register\00", align 1
@AR_SREV_ID = common dso_local global i32 0, align 4
@AR_SREV_VERSION2 = common dso_local global i32 0, align 4
@AR_SREV_TYPE2_S = common dso_local global i32 0, align 4
@AR_SREV_TYPE2_HOST_MODE = common dso_local global i32 0, align 4
@AR_SREV_VERSION = common dso_local global i32 0, align 4
@AR_SREV_REVISION = common dso_local global i32 0, align 4
@AR_SREV_VERSION_5416_PCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_read_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_read_revisions(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = icmp ne i32 (...)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %69 [
    i32 133, label %23
    i32 132, label %28
    i32 131, label %49
    i32 129, label %54
    i32 130, label %59
    i32 128, label %64
  ]

23:                                               ; preds = %18
  %24 = load i32, i32* @AR_SREV_VERSION_9100, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  br label %69

28:                                               ; preds = %18
  %29 = load i32, i32* @AR_SREV_VERSION_9330, align 4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = icmp ne i32 (...)* %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %28
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load i32, i32* @AR_SREV, align 4
  %40 = call i32 @REG_READ(%struct.ath_hw* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AR_SREV_REVISION2, align 4
  %43 = call i8* @MS(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %37, %28
  store i32 1, i32* %2, align 4
  br label %154

49:                                               ; preds = %18
  %50 = load i32, i32* @AR_SREV_VERSION_9340, align 4
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  store i32 1, i32* %2, align 4
  br label %154

54:                                               ; preds = %18
  %55 = load i32, i32* @AR_SREV_VERSION_9550, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  store i32 1, i32* %2, align 4
  br label %154

59:                                               ; preds = %18
  %60 = load i32, i32* @AR_SREV_VERSION_9531, align 4
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  store i32 1, i32* %2, align 4
  br label %154

64:                                               ; preds = %18
  %65 = load i32, i32* @AR_SREV_VERSION_9561, align 4
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %154

69:                                               ; preds = %18, %23
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load i32, i32* @AR_SREV, align 4
  %72 = call i32 @REG_READ(%struct.ath_hw* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = call i32 @ath9k_hw_common(%struct.ath_hw* %78)
  %80 = call i32 @ath_err(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

81:                                               ; preds = %69
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @AR_SREV_ID, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 255
  br i1 %86, label %87, label %124

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @AR_SREV_VERSION2, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @AR_SREV_TYPE2_S, align 4
  %93 = ashr i32 %91, %92
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @AR_SREV_REVISION2, align 4
  %99 = call i8* @MS(i32 %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = call i64 @AR_SREV_9462(%struct.ath_hw* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %87
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = call i64 @AR_SREV_9565(%struct.ath_hw* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %87
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %112, i32 0, i32 1
  store i32 1, i32* %113, align 8
  br label %123

114:                                              ; preds = %107
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @AR_SREV_TYPE2_HOST_MODE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 1
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %114, %111
  br label %153

124:                                              ; preds = %81
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = call i32 @AR_SREV_9100(%struct.ath_hw* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @AR_SREV_VERSION, align 4
  %131 = call i8* @MS(i32 %129, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 4
  br label %136

136:                                              ; preds = %128, %124
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @AR_SREV_REVISION, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %144 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AR_SREV_VERSION_5416_PCIE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %136
  br label %153

153:                                              ; preds = %152, %123
  store i32 1, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %77, %64, %59, %54, %49, %48
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ath_err(i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
