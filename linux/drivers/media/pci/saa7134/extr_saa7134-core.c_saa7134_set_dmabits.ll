; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_set_dmabits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_set_dmabits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, %struct.TYPE_7__*, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE0 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_0 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE4 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE5 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE1 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE2 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE3 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_7 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_6 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_5 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA0_4 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE6 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA3_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA3_0 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_0 = common dso_local global i32 0, align 4
@TASK_A = common dso_local global i32 0, align 4
@TASK_B = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@SAA7134_REGION_ENABLE = common dso_local global i32 0, align 4
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"dmabits: task=0x%02x ctrl=0x%02x irq=0x%x split=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @V4L2_FIELD_ANY, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @V4L2_FIELD_ANY, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 9
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %207

20:                                               ; preds = %1
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SAA7134_MAIN_CTRL_TE0, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_1, align 4
  %33 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %26, %20
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @SAA7134_MAIN_CTRL_TE4, align 4
  %55 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %46, %40
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %61 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, 16
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @SAA7134_MAIN_CTRL_TE1, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %71 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %75 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, 34
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @SAA7134_MAIN_CTRL_TE2, align 4
  %83 = load i32, i32* @SAA7134_MAIN_CTRL_TE3, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_7, align 4
  %88 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_6, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_5, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SAA7134_IRQ1_INTE_RA0_4, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %79, %73
  %97 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %98 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i32, i32* @SAA7134_MAIN_CTRL_TE6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @SAA7134_IRQ1_INTE_RA3_1, align 4
  %107 = load i32, i32* @SAA7134_IRQ1_INTE_RA3_0, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %113 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_1, align 4
  %122 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_0, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %117, %111
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134, %130, %126
  %139 = load i32, i32* @TASK_A, align 4
  %140 = call i32 @SAA7134_TASK_CONDITIONS(i32 %139)
  %141 = call i32 @saa_writeb(i32 %140, i32 13)
  %142 = load i32, i32* @TASK_B, align 4
  %143 = call i32 @SAA7134_TASK_CONDITIONS(i32 %142)
  %144 = call i32 @saa_writeb(i32 %143, i32 13)
  %145 = load i32, i32* @TASK_A, align 4
  %146 = call i32 @SAA7134_FIELD_HANDLING(i32 %145)
  %147 = call i32 @saa_writeb(i32 %146, i32 2)
  %148 = load i32, i32* @TASK_B, align 4
  %149 = call i32 @SAA7134_FIELD_HANDLING(i32 %148)
  %150 = call i32 @saa_writeb(i32 %149, i32 2)
  store i32 0, i32* %4, align 4
  br label %176

151:                                              ; preds = %134
  %152 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, i32* @TASK_A, align 4
  %157 = call i32 @SAA7134_TASK_CONDITIONS(i32 %156)
  %158 = call i32 @saa_writeb(i32 %157, i32 13)
  %159 = load i32, i32* @TASK_B, align 4
  %160 = call i32 @SAA7134_TASK_CONDITIONS(i32 %159)
  %161 = call i32 @saa_writeb(i32 %160, i32 14)
  br label %169

162:                                              ; preds = %151
  %163 = load i32, i32* @TASK_A, align 4
  %164 = call i32 @SAA7134_TASK_CONDITIONS(i32 %163)
  %165 = call i32 @saa_writeb(i32 %164, i32 14)
  %166 = load i32, i32* @TASK_B, align 4
  %167 = call i32 @SAA7134_TASK_CONDITIONS(i32 %166)
  %168 = call i32 @saa_writeb(i32 %167, i32 13)
  br label %169

169:                                              ; preds = %162, %155
  %170 = load i32, i32* @TASK_A, align 4
  %171 = call i32 @SAA7134_FIELD_HANDLING(i32 %170)
  %172 = call i32 @saa_writeb(i32 %171, i32 1)
  %173 = load i32, i32* @TASK_B, align 4
  %174 = call i32 @SAA7134_FIELD_HANDLING(i32 %173)
  %175 = call i32 @saa_writeb(i32 %174, i32 1)
  store i32 1, i32* %4, align 4
  br label %176

176:                                              ; preds = %169, %138
  %177 = load i32, i32* @SAA7134_REGION_ENABLE, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @saa_writeb(i32 %177, i32 %178)
  %180 = load i32, i32* @SAA7134_IRQ1, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @saa_writel(i32 %180, i32 %181)
  %183 = load i32, i32* @SAA7134_MAIN_CTRL, align 4
  %184 = load i32, i32* @SAA7134_MAIN_CTRL_TE0, align 4
  %185 = load i32, i32* @SAA7134_MAIN_CTRL_TE1, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @SAA7134_MAIN_CTRL_TE2, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @SAA7134_MAIN_CTRL_TE3, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @SAA7134_MAIN_CTRL_TE4, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @SAA7134_MAIN_CTRL_TE6, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @saa_andorl(i32 %183, i32 %196, i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %206 = call i32 @core_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %200, i32 %201, i8* %205)
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %176, %19
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @SAA7134_TASK_CONDITIONS(i32) #1

declare dso_local i32 @SAA7134_FIELD_HANDLING(i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

declare dso_local i32 @core_dbg(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
