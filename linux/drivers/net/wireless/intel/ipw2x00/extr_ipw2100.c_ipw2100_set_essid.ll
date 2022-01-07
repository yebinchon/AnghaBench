; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i64 }
%struct.host_command = type { i32, i64, i32, i32 }

@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@SSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SSID: '%*pE'\0A\00", align 1
@CFG_ASSOCIATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i8*, i32, i32)* @ipw2100_set_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_essid(%struct.ipw2100_priv* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw2100_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.host_command, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 0
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 3
  %23 = load i32, i32* @SSID, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25)
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @memcpy(i64 %31, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %40 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %115

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %46
  %50 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CFG_ASSOCIATE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %71, %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 24, %65
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %60

74:                                               ; preds = %60
  %75 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %76 = getelementptr inbounds %struct.host_command, %struct.host_command* %11, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %49, %46
  %78 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %79 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %78, %struct.host_command* %11)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  %83 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %84 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @memset(i64 %88, i32 0, i32 %91)
  %93 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @memcpy(i64 %95, i8* %96, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %101 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %82, %77
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %6, align 8
  %107 = call i64 @ipw2100_enable_adapter(%struct.ipw2100_priv* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %43
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
