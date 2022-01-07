; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DC21140 = common dso_local global i64 0, align 8
@GEP_CTRL = common dso_local global i32 0, align 4
@COMPACT_LEN = common dso_local global i32 0, align 4
@BLOCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @srom_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srom_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %9 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %8, i32 0, i32 3
  %10 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %11 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32* %16, i32** %4, align 8
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DC21140, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load i32, i32* @GEP_CTRL, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @gep_wr(i32 %34, %struct.net_device* %35)
  br label %37

37:                                               ; preds = %22, %1
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %147, %37
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %150

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 128
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @COMPACT_LEN, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %4, align 8
  br label %146

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @type5_infoblock(%struct.net_device* %59, i32 1, i32* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BLOCK_LEN, align 4
  %65 = and i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = load i32*, i32** %4, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %4, align 8
  br label %145

70:                                               ; preds = %53
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BLOCK_LEN, align 4
  %79 = and i32 %77, %78
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** %4, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %4, align 8
  br label %144

84:                                               ; preds = %70
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @type3_infoblock(%struct.net_device* %90, i32 1, i32* %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BLOCK_LEN, align 4
  %96 = and i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32*, i32** %4, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %4, align 8
  br label %143

101:                                              ; preds = %84
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BLOCK_LEN, align 4
  %110 = and i32 %108, %109
  %111 = add nsw i32 %110, 1
  %112 = load i32*, i32** %4, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %4, align 8
  br label %142

115:                                              ; preds = %101
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @type1_infoblock(%struct.net_device* %121, i32 1, i32* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @BLOCK_LEN, align 4
  %127 = and i32 %125, %126
  %128 = add nsw i32 %127, 1
  %129 = load i32*, i32** %4, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %4, align 8
  br label %141

132:                                              ; preds = %115
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BLOCK_LEN, align 4
  %136 = and i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = load i32*, i32** %4, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %4, align 8
  br label %141

141:                                              ; preds = %132, %120
  br label %142

142:                                              ; preds = %141, %106
  br label %143

143:                                              ; preds = %142, %89
  br label %144

144:                                              ; preds = %143, %75
  br label %145

145:                                              ; preds = %144, %58
  br label %146

146:                                              ; preds = %145, %48
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %5, align 4
  br label %41

150:                                              ; preds = %41
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gep_wr(i32, %struct.net_device*) #1

declare dso_local i32 @type5_infoblock(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @type3_infoblock(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @type1_infoblock(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
