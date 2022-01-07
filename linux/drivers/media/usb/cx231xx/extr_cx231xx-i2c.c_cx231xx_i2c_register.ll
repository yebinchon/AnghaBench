; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.cx231xx_i2c*, i32, %struct.TYPE_5__ }
%struct.cx231xx_i2c = type { i32, i64, %struct.TYPE_6__, %struct.cx231xx* }
%struct.cx231xx = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@cx231xx_adap_template = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c bus %d register FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2c_register(%struct.cx231xx_i2c* %0) #0 {
  %2 = alloca %struct.cx231xx_i2c*, align 8
  %3 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx_i2c* %0, %struct.cx231xx_i2c** %2, align 8
  %4 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %4, i32 0, i32 3
  %6 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  store %struct.cx231xx* %6, %struct.cx231xx** %3, align 8
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %14, i32 0, i32 2
  %16 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_6__* @cx231xx_adap_template to i8*), i64 16, i1 false)
  %17 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %29 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %28, i32 0, i32 3
  %30 = load %struct.cx231xx*, %struct.cx231xx** %29, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %34 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %38 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %39 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.cx231xx_i2c* %37, %struct.cx231xx_i2c** %40, align 8
  %41 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %42 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %41, i32 0, i32 2
  %43 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 2
  %45 = call i32 @i2c_set_adapdata(%struct.TYPE_6__* %42, i32* %44)
  %46 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %47 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %46, i32 0, i32 2
  %48 = call i64 @i2c_add_adapter(%struct.TYPE_6__* %47)
  %49 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %52 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 0, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %1
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %60 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %55, %1
  %64 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %2, align 8
  %65 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
