; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_disable_all_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_disable_all_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cc770_priv = type { i32*, i32 }

@CC770_OBJ_FLAG_RX = common dso_local global i32 0, align 4
@CTRL_EAF = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@NEWDAT_RES = common dso_local global i32 0, align 4
@MSGLST_RES = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@MSGVAL_RES = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_RES = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@CPUUPD_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc770_priv*)* @disable_all_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_all_objs(%struct.cc770_priv* %0) #0 {
  %2 = alloca %struct.cc770_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cc770_priv* %0, %struct.cc770_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %99, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %8 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %102

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @obj2msgobj(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %16 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CC770_OBJ_FLAG_RX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %30 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CTRL_EAF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %99

36:                                               ; preds = %28, %25
  %37 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NEWDAT_RES, align 4
  %45 = load i32, i32* @MSGLST_RES, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @TXRQST_RES, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RMTPND_RES, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @cc770_write_reg(%struct.cc770_priv* %37, i32 %43, i32 %50)
  %52 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MSGVAL_RES, align 4
  %60 = load i32, i32* @TXIE_RES, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RXIE_RES, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @INTPND_RES, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @cc770_write_reg(%struct.cc770_priv* %52, i32 %58, i32 %65)
  br label %98

67:                                               ; preds = %12
  %68 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RMTPND_RES, align 4
  %76 = load i32, i32* @TXRQST_RES, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CPUUPD_RES, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NEWDAT_RES, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @cc770_write_reg(%struct.cc770_priv* %68, i32 %74, i32 %81)
  %83 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MSGVAL_RES, align 4
  %91 = load i32, i32* @TXIE_RES, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RXIE_RES, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @INTPND_RES, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @cc770_write_reg(%struct.cc770_priv* %83, i32 %89, i32 %96)
  br label %98

98:                                               ; preds = %67, %36
  br label %99

99:                                               ; preds = %98, %35
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %5

102:                                              ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
