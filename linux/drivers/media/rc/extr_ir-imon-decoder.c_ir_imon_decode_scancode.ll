; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_decode_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_decode_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.imon_dec }
%struct.imon_dec = type { i32, i32 }

@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@RC_PROTO_IMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*)* @ir_imon_decode_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_imon_decode_scancode(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.imon_dec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %7 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.imon_dec* %10, %struct.imon_dec** %3, align 8
  %11 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %12 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 697374135
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %17 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %23 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %26 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -67108609
  %29 = icmp eq i32 %28, 1744830647
  br i1 %29, label %30, label %157

30:                                               ; preds = %24
  %31 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %32 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 8
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 16
  %39 = ashr i32 %38, 2
  %40 = or i32 %36, %39
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 32
  %43 = ashr i32 %42, 4
  %44 = or i32 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 64
  %47 = ashr i32 %46, 6
  %48 = or i32 %44, %47
  store i32 %48, i32* %4, align 4
  %49 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %50 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 33554432
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %30
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, -16
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %30
  %58 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %59 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 8
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 16
  %66 = ashr i32 %65, 2
  %67 = or i32 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 32
  %70 = ashr i32 %69, 4
  %71 = or i32 %67, %70
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 64
  %74 = ashr i32 %73, 6
  %75 = or i32 %71, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %77 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 16777216
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %57
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, -16
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %57
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %92 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @abs(i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @abs(i32 %98)
  %100 = icmp sgt i64 %97, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 680859063, i32 715462071
  %106 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %107 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %115

108:                                              ; preds = %95
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 732239287, i32 698684855
  %113 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %114 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %101
  br label %116

116:                                              ; preds = %115, %90, %87, %84
  %117 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %118 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %156, label %121

121:                                              ; preds = %116
  %122 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %123 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @REL_X, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @input_report_rel(i32 %124, i32 %125, i32 %126)
  %128 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %129 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @REL_Y, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @input_report_rel(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %135 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BTN_LEFT, align 4
  %138 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %139 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 65536
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @input_report_key(i32 %136, i32 %137, i32 %143)
  %145 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %146 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @BTN_RIGHT, align 4
  %149 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %150 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 262144
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @input_report_key(i32 %147, i32 %148, i32 %154)
  br label %156

156:                                              ; preds = %121, %116
  br label %157

157:                                              ; preds = %156, %24
  %158 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %159 = load i32, i32* @RC_PROTO_IMON, align 4
  %160 = load %struct.imon_dec*, %struct.imon_dec** %3, align 8
  %161 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rc_keydown(%struct.rc_dev* %158, i32 %159, i32 %162, i32 0)
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
