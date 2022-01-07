; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_init_bttv_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-i2c.c_init_bttv_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.bttv* }
%struct.bttv = type { i32, i32, i64, %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bttv internal\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@i2c_hw = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"bt878\00", align 1
@bttv_algo = common dso_local global i32 0, align 4
@i2c_udelay = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"bttv\00", align 1
@bttv_i2c_algo_bit_template = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"bt%d #%d [%s]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@i2c_scan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_bttv_i2c(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load %struct.bttv*, %struct.bttv** %2, align 8
  %4 = getelementptr inbounds %struct.bttv, %struct.bttv* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @I2C_NAME_SIZE, align 4
  %8 = call i32 @strscpy(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i64, i64* @i2c_hw, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bttv*, %struct.bttv** %2, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.bttv*, %struct.bttv** %2, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %26 = load %struct.bttv*, %struct.bttv** %2, align 8
  %27 = getelementptr inbounds %struct.bttv, %struct.bttv* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  store i32* @bttv_algo, i32** %29, align 8
  br label %58

30:                                               ; preds = %14
  %31 = load i32, i32* @i2c_udelay, align 4
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 5, i32* @i2c_udelay, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.bttv*, %struct.bttv** %2, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strscpy(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 5
  %43 = bitcast %struct.TYPE_16__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 bitcast (%struct.TYPE_16__* @bttv_i2c_algo_bit_template to i8*), i64 16, i1 false)
  %44 = load i32, i32* @i2c_udelay, align 4
  %45 = load %struct.bttv*, %struct.bttv** %2, align 8
  %46 = getelementptr inbounds %struct.bttv, %struct.bttv* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.bttv*, %struct.bttv** %2, align 8
  %49 = load %struct.bttv*, %struct.bttv** %2, align 8
  %50 = getelementptr inbounds %struct.bttv, %struct.bttv* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  store %struct.bttv* %48, %struct.bttv** %51, align 8
  %52 = load %struct.bttv*, %struct.bttv** %2, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 5
  %54 = load %struct.bttv*, %struct.bttv** %2, align 8
  %55 = getelementptr inbounds %struct.bttv, %struct.bttv* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %57, align 8
  br label %58

58:                                               ; preds = %34, %19
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = load %struct.bttv*, %struct.bttv** %2, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load %struct.bttv*, %struct.bttv** %2, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.bttv*, %struct.bttv** %2, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32* %68, i32** %73, align 8
  %74 = load %struct.bttv*, %struct.bttv** %2, align 8
  %75 = getelementptr inbounds %struct.bttv, %struct.bttv* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bttv*, %struct.bttv** %2, align 8
  %80 = getelementptr inbounds %struct.bttv, %struct.bttv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bttv*, %struct.bttv** %2, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bttv*, %struct.bttv** %2, align 8
  %87 = getelementptr inbounds %struct.bttv, %struct.bttv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %92 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %85, i8* %91)
  %93 = load %struct.bttv*, %struct.bttv** %2, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load %struct.bttv*, %struct.bttv** %2, align 8
  %97 = getelementptr inbounds %struct.bttv, %struct.bttv* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = call i32 @i2c_set_adapdata(%struct.TYPE_13__* %95, %struct.TYPE_14__* %98)
  %100 = load %struct.bttv*, %struct.bttv** %2, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load %struct.bttv*, %struct.bttv** %2, align 8
  %104 = getelementptr inbounds %struct.bttv, %struct.bttv* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %105, align 8
  %106 = load %struct.bttv*, %struct.bttv** %2, align 8
  %107 = getelementptr inbounds %struct.bttv, %struct.bttv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %58
  %111 = load %struct.bttv*, %struct.bttv** %2, align 8
  %112 = getelementptr inbounds %struct.bttv, %struct.bttv* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = call i64 @i2c_add_adapter(%struct.TYPE_13__* %113)
  %115 = load %struct.bttv*, %struct.bttv** %2, align 8
  %116 = getelementptr inbounds %struct.bttv, %struct.bttv* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %128

117:                                              ; preds = %58
  %118 = load %struct.bttv*, %struct.bttv** %2, align 8
  %119 = call i32 @bttv_bit_setscl(%struct.bttv* %118, i32 1)
  %120 = load %struct.bttv*, %struct.bttv** %2, align 8
  %121 = call i32 @bttv_bit_setsda(%struct.bttv* %120, i32 1)
  %122 = load %struct.bttv*, %struct.bttv** %2, align 8
  %123 = getelementptr inbounds %struct.bttv, %struct.bttv* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = call i64 @i2c_bit_add_bus(%struct.TYPE_13__* %124)
  %126 = load %struct.bttv*, %struct.bttv** %2, align 8
  %127 = getelementptr inbounds %struct.bttv, %struct.bttv* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %117, %110
  %129 = load %struct.bttv*, %struct.bttv** %2, align 8
  %130 = getelementptr inbounds %struct.bttv, %struct.bttv* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 0, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load i64, i64* @i2c_scan, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.bttv*, %struct.bttv** %2, align 8
  %138 = getelementptr inbounds %struct.bttv, %struct.bttv* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bttv*, %struct.bttv** %2, align 8
  %143 = getelementptr inbounds %struct.bttv, %struct.bttv* %142, i32 0, i32 3
  %144 = call i32 @do_i2c_scan(i32 %141, %struct.TYPE_15__* %143)
  br label %145

145:                                              ; preds = %136, %133, %128
  %146 = load %struct.bttv*, %struct.bttv** %2, align 8
  %147 = getelementptr inbounds %struct.bttv, %struct.bttv* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  ret i32 %149
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_13__*) #1

declare dso_local i32 @bttv_bit_setscl(%struct.bttv*, i32) #1

declare dso_local i32 @bttv_bit_setsda(%struct.bttv*, i32) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_13__*) #1

declare dso_local i32 @do_i2c_scan(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
