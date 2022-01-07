; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_build_setup_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_build_setup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.de4x5_private = type { i8*, i64 }

@ALL = common dso_local global i32 0, align 4
@SETUP_FRAME_LEN = common dso_local global i32 0, align 4
@HASH_PERF = common dso_local global i64 0, align 8
@IMPERF_PA_OFFSET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DE4X5_HASH_TABLE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net_device*, i32)* @build_setup_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_setup_frame(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %8)
  store %struct.de4x5_private* %9, %struct.de4x5_private** %5, align 8
  %10 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %11 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ALL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @SETUP_FRAME_LEN, align 4
  %21 = call i32 @memset(i8* %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %24 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HASH_PERF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %22
  %29 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %30 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @IMPERF_PA_OFFSET, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %58, %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %7, align 8
  br label %57

57:                                               ; preds = %54, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %63 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @DE4X5_HASH_TABLE_LEN, align 4
  %66 = ashr i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 -3
  store i8 -128, i8* %69, align 1
  br label %120

70:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %71
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 %82, i8* %87, align 1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %91, %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %71

98:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 -1, i8* %108, align 1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8* %114, i8** %7, align 8
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %99

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119, %61
  %121 = load i8*, i8** %7, align 8
  ret i8* %121
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
