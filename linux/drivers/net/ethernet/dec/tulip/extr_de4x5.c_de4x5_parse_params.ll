; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_parse_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.de4x5_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@AUTO = common dso_local global i8* null, align 8
@args = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fdx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FDX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"autosense\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"AUTOSENSE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"TP_NW\00", align 1
@TP_NW = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@TP = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"BNC_AUI\00", align 1
@BNC = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"BNC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"AUI\00", align 1
@AUI = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"10Mb\00", align 1
@_10Mb = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"100Mb\00", align 1
@_100Mb = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_parse_params(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %3, align 8
  %9 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %10 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i8*, i8** @AUTO, align 8
  %13 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %14 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** @args, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %148

19:                                               ; preds = %1
  %20 = load i8*, i8** @args, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strstr(i8* %20, i8* %23)
  store i8* %24, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %148

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %36, %26
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %6, align 1
  %45 = load i8*, i8** %5, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %42
  %54 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %55 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %145

65:                                               ; preds = %61, %57
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** @TP_NW, align 8
  %71 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %72 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  br label %144

74:                                               ; preds = %65
  %75 = load i8*, i8** %4, align 8
  %76 = call i8* @strstr(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** @TP, align 8
  %80 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %81 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  br label %143

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = call i8* @strstr(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** @BNC, align 8
  %89 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %90 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  br label %142

92:                                               ; preds = %83
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @strstr(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i8*, i8** @BNC, align 8
  %98 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %99 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  br label %141

101:                                              ; preds = %92
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @strstr(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** @AUI, align 8
  %107 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %108 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  br label %140

110:                                              ; preds = %101
  %111 = load i8*, i8** %4, align 8
  %112 = call i8* @strstr(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8*, i8** @_10Mb, align 8
  %116 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %117 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  br label %139

119:                                              ; preds = %110
  %120 = load i8*, i8** %4, align 8
  %121 = call i8* @strstr(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** @_100Mb, align 8
  %125 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %126 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i8* %124, i8** %127, align 8
  br label %138

128:                                              ; preds = %119
  %129 = load i8*, i8** %4, align 8
  %130 = call i8* @strstr(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** @AUTO, align 8
  %134 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %135 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138, %114
  br label %140

140:                                              ; preds = %139, %105
  br label %141

141:                                              ; preds = %140, %96
  br label %142

142:                                              ; preds = %141, %87
  br label %143

143:                                              ; preds = %142, %78
  br label %144

144:                                              ; preds = %143, %69
  br label %145

145:                                              ; preds = %144, %61
  %146 = load i8, i8* %6, align 1
  %147 = load i8*, i8** %5, align 8
  store i8 %146, i8* %147, align 1
  br label %148

148:                                              ; preds = %18, %145, %19
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
