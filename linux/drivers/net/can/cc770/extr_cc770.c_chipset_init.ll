; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_chipset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_chipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i32 }
%struct.cc770_priv = type { i32, i32, i32 }

@control = common dso_local global i32 0, align 4
@CTRL_CCE = common dso_local global i32 0, align 4
@CTRL_INI = common dso_local global i32 0, align 4
@clkout = common dso_local global i32 0, align 4
@cpu_interface = common dso_local global i32 0, align 4
@bus_config = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@MSGOBJ_FIRST = common dso_local global i32 0, align 4
@MSGOBJ_LAST = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@INTPND_UNC = common dso_local global i32 0, align 4
@RXIE_RES = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@MSGVAL_RES = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@MSGLST_RES = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@global_mask_std = common dso_local global i32* null, align 8
@global_mask_ext = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc770_priv*)* @chipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipset_init(%struct.cc770_priv* %0) #0 {
  %2 = alloca %struct.cc770_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cc770_priv* %0, %struct.cc770_priv** %2, align 8
  %6 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %7 = load i32, i32* @control, align 4
  %8 = load i32, i32* @CTRL_CCE, align 4
  %9 = load i32, i32* @CTRL_INI, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cc770_write_reg(%struct.cc770_priv* %6, i32 %7, i32 %10)
  %12 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %13 = load i32, i32* @clkout, align 4
  %14 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %15 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cc770_write_reg(%struct.cc770_priv* %12, i32 %13, i32 %16)
  %18 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %19 = load i32, i32* @cpu_interface, align 4
  %20 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %21 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cc770_write_reg(%struct.cc770_priv* %18, i32 %19, i32 %22)
  %24 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %25 = load i32, i32* @bus_config, align 4
  %26 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %27 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cc770_write_reg(%struct.cc770_priv* %24, i32 %25, i32 %28)
  %30 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %31 = load i32, i32* @interrupt, align 4
  %32 = call i32 @cc770_read_reg(%struct.cc770_priv* %30, i32 %31)
  %33 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %34 = load i32, i32* @status, align 4
  %35 = call i32 @cc770_write_reg(%struct.cc770_priv* %33, i32 %34, i32 0)
  %36 = load i32, i32* @MSGOBJ_FIRST, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %135, %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MSGOBJ_LAST, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %138

41:                                               ; preds = %37
  %42 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INTPND_UNC, align 4
  %50 = load i32, i32* @RXIE_RES, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TXIE_RES, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MSGVAL_RES, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @cc770_write_reg(%struct.cc770_priv* %42, i32 %48, i32 %55)
  %57 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INTPND_RES, align 4
  %65 = load i32, i32* @RXIE_RES, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TXIE_RES, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MSGVAL_RES, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @cc770_write_reg(%struct.cc770_priv* %57, i32 %63, i32 %70)
  %72 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NEWDAT_RES, align 4
  %80 = load i32, i32* @MSGLST_RES, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @TXRQST_RES, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RMTPND_RES, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @cc770_write_reg(%struct.cc770_priv* %72, i32 %78, i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %103, %41
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %106

90:                                               ; preds = %87
  %91 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @cc770_write_reg(%struct.cc770_priv* %91, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %87

106:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cc770_write_reg(%struct.cc770_priv* %111, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %107

126:                                              ; preds = %107
  %127 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @cc770_write_reg(%struct.cc770_priv* %127, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %37

138:                                              ; preds = %37
  %139 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %140 = load i32*, i32** @global_mask_std, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @cc770_write_reg(%struct.cc770_priv* %139, i32 %142, i32 0)
  %144 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %145 = load i32*, i32** @global_mask_std, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @cc770_write_reg(%struct.cc770_priv* %144, i32 %147, i32 0)
  %149 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %150 = load i32*, i32** @global_mask_ext, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cc770_write_reg(%struct.cc770_priv* %149, i32 %152, i32 0)
  %154 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %155 = load i32*, i32** @global_mask_ext, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cc770_write_reg(%struct.cc770_priv* %154, i32 %157, i32 0)
  %159 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %160 = load i32*, i32** @global_mask_ext, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cc770_write_reg(%struct.cc770_priv* %159, i32 %162, i32 0)
  %164 = load %struct.cc770_priv*, %struct.cc770_priv** %2, align 8
  %165 = load i32*, i32** @global_mask_ext, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @cc770_write_reg(%struct.cc770_priv* %164, i32 %167, i32 0)
  ret void
}

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
