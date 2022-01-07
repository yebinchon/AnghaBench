; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_map_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_map_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DC21140 = common dso_local global i32 0, align 4
@DC2114x = common dso_local global i32 0, align 4
@_10Mb = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@BNC = common dso_local global i32 0, align 4
@AUI = common dso_local global i32 0, align 4
@_100Mb = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: Bad media code [%d] detected in SROM!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @srom_map_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srom_map_media(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de4x5_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %5)
  store %struct.de4x5_private* %6, %struct.de4x5_private** %4, align 8
  %7 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %8 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %10 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

17:                                               ; preds = %1
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %141 [
    i32 128, label %21
    i32 129, label %31
    i32 131, label %65
    i32 130, label %69
    i32 132, label %73
    i32 134, label %83
    i32 133, label %100
    i32 135, label %105
    i32 136, label %115
    i32 137, label %132
  ]

21:                                               ; preds = %17
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %150

28:                                               ; preds = %21
  %29 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %30 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %17, %28
  %32 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %33 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %39 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %150

43:                                               ; preds = %37, %31
  %44 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %45 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DC21140, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -256
  %54 = load i32, i32* @DC2114x, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %43
  %57 = load i32, i32* @_10Mb, align 4
  %58 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %59 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @TP, align 4
  %62 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %63 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %149

65:                                               ; preds = %17
  %66 = load i32, i32* @BNC, align 4
  %67 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %68 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %149

69:                                               ; preds = %17
  %70 = load i32, i32* @AUI, align 4
  %71 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %72 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %149

73:                                               ; preds = %17
  %74 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %75 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %150

80:                                               ; preds = %73
  %81 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %82 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %17, %80
  %84 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %85 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %91 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 -1, i32* %2, align 4
  br label %150

95:                                               ; preds = %89, %83
  %96 = load i8*, i8** @_100Mb, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %99 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %149

100:                                              ; preds = %17
  %101 = load i8*, i8** @_100Mb, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %104 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %149

105:                                              ; preds = %17
  %106 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %107 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  store i32 -1, i32* %2, align 4
  br label %150

112:                                              ; preds = %105
  %113 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %114 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %17, %112
  %116 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %117 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %123 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  store i32 -1, i32* %2, align 4
  br label %150

127:                                              ; preds = %121, %115
  %128 = load i8*, i8** @_100Mb, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %131 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %149

132:                                              ; preds = %17
  %133 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %134 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %133, i32 0, i32 2
  store i32 137, i32* %134, align 4
  %135 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %136 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %140 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %149

141:                                              ; preds = %17
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %146 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147)
  store i32 -1, i32* %2, align 4
  br label %150

149:                                              ; preds = %132, %127, %100, %95, %69, %65, %64
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %141, %126, %111, %94, %79, %42, %27, %16
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
