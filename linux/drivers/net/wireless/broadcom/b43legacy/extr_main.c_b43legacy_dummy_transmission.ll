; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_dummy_transmission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_dummy_transmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32, i32 }

@__const.b43legacy_dummy_transmission.buffer = private unnamed_addr constant [5 x i32] [i32 0, i32 13893632, i32 0, i32 16777216, i32 0], align 16
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_dummy_transmission(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %3, align 8
  %10 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.b43legacy_dummy_transmission.buffer to i8*), i64 20, i1 false)
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %1, %1
  store i32 250, i32* %5, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 754798, i32* %15, align 16
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %132

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul i32 %24, 4
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @b43legacy_ram_write(%struct.b43legacy_wldev* %23, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %37 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %35, i32 %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %38, i32 1384, i32 0)
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %41 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %40, i32 1984, i32 0)
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %42, i32 1292, i32 0)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %44, i32 1288, i32 0)
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %46, i32 1290, i32 0)
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %48, i32 1356, i32 0)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %51 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %50, i32 1386, i32 20)
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %53 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %52, i32 1384, i32 2086)
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %55 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %54, i32 1280, i32 0)
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %57 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %56, i32 1282, i32 48)
  %58 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %59 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 8272
  br i1 %61, label %62, label %70

62:                                               ; preds = %34
  %63 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 5
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %68, i32 81, i32 23)
  br label %70

70:                                               ; preds = %67, %62, %34
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %77 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %76, i32 1294)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 128
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75
  %83 = call i32 @udelay(i32 10)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %71

87:                                               ; preds = %81, %71
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i32, i32* %4, align 4
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %92, i32 1294)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 1024
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  %99 = call i32 @udelay(i32 10)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %88

103:                                              ; preds = %97, %88
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i32, i32* %4, align 4
  %106 = icmp ult i32 %105, 10
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %109 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %108, i32 1680)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, 256
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %119

114:                                              ; preds = %107
  %115 = call i32 @udelay(i32 10)
  br label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %4, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %104

119:                                              ; preds = %113, %104
  %120 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %121 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 8272
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %126 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp sle i32 %127, 5
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %131 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %130, i32 81, i32 55)
  br label %132

132:                                              ; preds = %16, %129, %124, %119
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #2

declare dso_local i32 @b43legacy_ram_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
