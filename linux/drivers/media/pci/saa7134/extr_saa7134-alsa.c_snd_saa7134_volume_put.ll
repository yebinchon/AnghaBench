; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_saa7134_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_saa7134_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_9__ = type { i32**, i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SAA7134_ANALOG_IO_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_saa7134_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_saa7134_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.saa7134_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.TYPE_9__* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 20
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 20, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 20
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 20, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_irq(i32* %50)
  store i32 0, i32* %7, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %141

82:                                               ; preds = %79
  %83 = load %struct.saa7134_dev*, %struct.saa7134_dev** %6, align 8
  %84 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %122 [
    i32 129, label %88
    i32 130, label %106
    i32 128, label %106
  ]

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %105 [
    i32 131, label %90
    i32 133, label %91
    i32 132, label %98
  ]

90:                                               ; preds = %88
  store i32 20, i32* %9, align 4
  br label %105

91:                                               ; preds = %88
  %92 = load i32, i32* @SAA7134_ANALOG_IO_SELECT, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %93, 10
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 16
  %97 = call i32 @saa_andorb(i32 %92, i32 16, i32 %96)
  br label %105

98:                                               ; preds = %88
  %99 = load i32, i32* @SAA7134_ANALOG_IO_SELECT, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 10
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 32
  %104 = call i32 @saa_andorb(i32 %99, i32 32, i32 %103)
  br label %105

105:                                              ; preds = %88, %98, %91, %90
  br label %122

106:                                              ; preds = %82, %82
  %107 = load i32, i32* %8, align 4
  switch i32 %107, label %121 [
    i32 131, label %108
    i32 133, label %109
    i32 132, label %115
  ]

108:                                              ; preds = %106
  store i32 20, i32* %9, align 4
  br label %121

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 10
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 0, i32 16
  %114 = call i32 @saa_andorb(i32 1428, i32 16, i32 %113)
  br label %121

115:                                              ; preds = %106
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 10
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 32
  %120 = call i32 @saa_andorb(i32 1428, i32 32, i32 %119)
  br label %121

121:                                              ; preds = %106, %115, %109, %108
  br label %122

122:                                              ; preds = %82, %121, %105
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %123, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %132, i32* %140, align 4
  br label %141

141:                                              ; preds = %122, %79
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_9__* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
