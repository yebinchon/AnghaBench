; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-i2c.c_stk1160_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.stk1160*, i32, %struct.TYPE_6__ }
%struct.stk1160 = type { %struct.TYPE_7__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@adap_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"stk1160\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot add i2c adapter (%d)\0A\00", align 1
@client_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STK1160_SICTL_CD = common dso_local global i64 0, align 8
@STK1160_ASIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk1160_i2c_register(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  %5 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %6 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %5, i32 0, i32 0
  %7 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_7__* @adap_template to i8*), i64 16, i1 false)
  %8 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %9 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %12 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %16 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strscpy(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %21 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %22 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.stk1160* %20, %struct.stk1160** %23, align 8
  %24 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %25 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %24, i32 0, i32 0
  %26 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %27 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %26, i32 0, i32 2
  %28 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %25, i32* %27)
  %29 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %30 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %29, i32 0, i32 0
  %31 = call i32 @i2c_add_adapter(%struct.TYPE_7__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @stk1160_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %1
  %39 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %40 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_8__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.TYPE_8__* @client_template to i8*), i64 8, i1 false)
  %42 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %43 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %42, i32 0, i32 0
  %44 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %45 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %48 = load i64, i64* @STK1160_SICTL_CD, align 8
  %49 = call i32 @stk1160_write_reg(%struct.stk1160* %47, i64 %48, i32 15)
  %50 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %51 = load i64, i64* @STK1160_ASIC, align 8
  %52 = add nsw i64 %51, 3
  %53 = call i32 @stk1160_write_reg(%struct.stk1160* %50, i64 %52, i32 0)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %38, %34
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_7__*) #2

declare dso_local i32 @stk1160_err(i8*, i32) #2

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
