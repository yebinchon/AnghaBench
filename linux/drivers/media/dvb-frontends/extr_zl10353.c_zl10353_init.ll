; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zl10353_state* }
%struct.zl10353_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@__const.zl10353_init.zl10353_reset_attach = private unnamed_addr constant [6 x i32] [i32 80, i32 3, i32 100, i32 70, i32 21, i32 15], align 16
@debug_regs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zl10353_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.zl10353_state*, align 8
  %4 = alloca [6 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.zl10353_state*, %struct.zl10353_state** %6, align 8
  store %struct.zl10353_state* %7, %struct.zl10353_state** %3, align 8
  %8 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @__const.zl10353_init.zl10353_reset_attach to i8*), i64 24, i1 false)
  %9 = load i64, i64* @debug_regs, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = call i32 @zl10353_dump_regs(%struct.dvb_frontend* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %16 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -33
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %26 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %32 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %38 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %44 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %50 = call i32 @zl10353_read_register(%struct.zl10353_state* %49, i32 80)
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %56 = call i32 @zl10353_read_register(%struct.zl10353_state* %55, i32 81)
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54, %48
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %63 = call i32 @zl10353_write(%struct.dvb_frontend* %61, i32* %62, i32 24)
  %64 = load i64, i64* @debug_regs, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %68 = call i32 @zl10353_dump_regs(%struct.dvb_frontend* %67)
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %54
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zl10353_dump_regs(%struct.dvb_frontend*) #2

declare dso_local i32 @zl10353_read_register(%struct.zl10353_state*, i32) #2

declare dso_local i32 @zl10353_write(%struct.dvb_frontend*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
