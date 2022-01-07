; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_get_format_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_get_format_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.imx355 = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@imx355_get_format_code.codes = internal constant [2 x [2 x %struct.TYPE_7__]] [[2 x %struct.TYPE_7__] [%struct.TYPE_7__ { i32 128, i32 129 }, %struct.TYPE_7__ zeroinitializer], [2 x %struct.TYPE_7__] [%struct.TYPE_7__ { i32 130, i32 131 }, %struct.TYPE_7__ zeroinitializer]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.imx355*)* @imx355_get_format_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imx355_get_format_code(%struct.imx355* %0) #0 {
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.imx355*, align 8
  store %struct.imx355* %0, %struct.imx355** %3, align 8
  %4 = load %struct.imx355*, %struct.imx355** %3, align 8
  %5 = getelementptr inbounds %struct.imx355, %struct.imx355* %4, i32 0, i32 2
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.imx355*, %struct.imx355** %3, align 8
  %8 = getelementptr inbounds %struct.imx355, %struct.imx355* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [2 x [2 x %struct.TYPE_7__]], [2 x [2 x %struct.TYPE_7__]]* @imx355_get_format_code.codes, i64 0, i64 %11
  %13 = load %struct.imx355*, %struct.imx355** %3, align 8
  %14 = getelementptr inbounds %struct.imx355, %struct.imx355* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %12, i64 0, i64 %17
  %19 = bitcast %struct.TYPE_7__* %2 to i8*
  %20 = bitcast %struct.TYPE_7__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %struct.TYPE_7__* %2 to i64*
  %22 = load i64, i64* %21, align 4
  ret i64 %22
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
