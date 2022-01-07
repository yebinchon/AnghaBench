; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_platform.c_sp_populate_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_platform.c_sp_populate_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@sp_read_reg32 = common dso_local global i32 0, align 4
@sp_write_reg32 = common dso_local global i32 0, align 4
@sp_read_reg16 = common dso_local global i32 0, align 4
@sp_write_reg16 = common dso_local global i32 0, align 4
@sp_read_reg8 = common dso_local global i32 0, align 4
@sp_write_reg8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"nxp,external-clock-frequency\00", align 1
@SP_CAN_CLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"nxp,tx-output-mode\00", align 1
@OCR_MODE_MASK = common dso_local global i32 0, align 4
@OCR_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"nxp,tx-output-config\00", align 1
@OCR_TX_SHIFT = common dso_local global i32 0, align 4
@OCR_TX_MASK = common dso_local global i32 0, align 4
@OCR_TX0_PULLDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"nxp,clock-out-frequency\00", align 1
@CDR_CLKOUT_MASK = common dso_local global i32 0, align 4
@CDR_CLK_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"nxp,no-comparator-bypass\00", align 1
@CDR_CBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*, %struct.device_node*)* @sp_populate_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_populate_of(%struct.sja1000_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %30 [
    i32 4, label %15
    i32 2, label %22
    i32 1, label %29
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @sp_read_reg32, align 4
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %18 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @sp_write_reg32, align 4
  %20 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %21 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* @sp_read_reg16, align 4
  %24 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %25 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @sp_write_reg16, align 4
  %27 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %13, %29
  %31 = load i32, i32* @sp_read_reg8, align 4
  %32 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %33 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @sp_write_reg8, align 4
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %22, %15
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 %43, 2
  %45 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* @SP_CAN_CLOCK, align 4
  %51 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %52 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @OCR_MODE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %65 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %74

68:                                               ; preds = %55
  %69 = load i32, i32* @OCR_MODE_NORMAL, align 4
  %70 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %71 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @OCR_TX_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* @OCR_TX_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %86 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %95

89:                                               ; preds = %74
  %90 = load i32, i32* @OCR_TX0_PULLDOWN, align 4
  %91 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %92 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %79
  %96 = load %struct.device_node*, %struct.device_node** %4, align 8
  %97 = call i32 @of_property_read_u32(%struct.device_node* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %105 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 2
  %110 = load i32, i32* %6, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = sdiv i32 %115, 2
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %119 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %128

122:                                              ; preds = %103
  %123 = load i32, i32* @CDR_CLKOUT_MASK, align 4
  %124 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %125 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %114
  br label %135

129:                                              ; preds = %100, %95
  %130 = load i32, i32* @CDR_CLK_OFF, align 4
  %131 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %132 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %128
  %136 = load %struct.device_node*, %struct.device_node** %4, align 8
  %137 = call i32 @of_property_read_bool(%struct.device_node* %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @CDR_CBP, align 4
  %141 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %142 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %135
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
