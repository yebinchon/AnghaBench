; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64, i32, i32, i64, i32, i32, i32, i64 }

@E1000_FC_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@EEPROM_WORD0F_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_FC_NONE = common dso_local global i32 0, align 4
@EEPROM_WORD0F_ASM_DIR = common dso_local global i32 0, align 4
@E1000_FC_TX_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_FULL = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i64 0, align 8
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_FC_RX_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", align 1
@EEPROM_WORD0F_SWPDIO_EXT = common dso_local global i32 0, align 4
@SWDPIO__EXT_SHIFT = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", align 1
@FCT = common dso_local global i32 0, align 4
@FLOW_CONTROL_TYPE = common dso_local global i32 0, align 4
@FCAH = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_HIGH = common dso_local global i32 0, align 4
@FCAL = common dso_local global i32 0, align 4
@FLOW_CONTROL_ADDRESS_LOW = common dso_local global i32 0, align 4
@FCTTV = common dso_local global i32 0, align 4
@FCRTL = common dso_local global i32 0, align 4
@FCRTH = common dso_local global i32 0, align 4
@E1000_FCRTL_XONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_setup_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @E1000_FC_DEFAULT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @EEPROM_INIT_CONTROL2_REG, align 4
  %15 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %13, i32 %14, i32 1, i32* %6)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %2, align 8
  br label %184

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EEPROM_WORD0F_PAUSE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @E1000_FC_NONE, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %46

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EEPROM_WORD0F_PAUSE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @EEPROM_WORD0F_ASM_DIR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @E1000_FC_FULL, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_82542_rev2_0, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @e1000_82543, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @E1000_FC_RX_PAUSE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %71, %66, %60
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_82543, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %78
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = load i32, i32* @EEPROM_INIT_CONTROL2_REG, align 4
  %96 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %94, i32 %95, i32 1, i32* %6)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %101 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %2, align 8
  br label %184

103:                                              ; preds = %93
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @EEPROM_WORD0F_SWPDIO_EXT, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @SWDPIO__EXT_SHIFT, align 4
  %108 = shl i32 %106, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @CTRL_EXT, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @ew32(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %78
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @e1000_media_type_copper, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = call i64 @e1000_setup_copper_link(%struct.e1000_hw* %119)
  br label %124

121:                                              ; preds = %112
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = call i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = phi i64 [ %120, %118 ], [ %123, %121 ]
  store i64 %125, i64* %5, align 8
  %126 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @FCT, align 4
  %128 = load i32, i32* @FLOW_CONTROL_TYPE, align 4
  %129 = call i32 @ew32(i32 %127, i32 %128)
  %130 = load i32, i32* @FCAH, align 4
  %131 = load i32, i32* @FLOW_CONTROL_ADDRESS_HIGH, align 4
  %132 = call i32 @ew32(i32 %130, i32 %131)
  %133 = load i32, i32* @FCAL, align 4
  %134 = load i32, i32* @FLOW_CONTROL_ADDRESS_LOW, align 4
  %135 = call i32 @ew32(i32 %133, i32 %134)
  %136 = load i32, i32* @FCTTV, align 4
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ew32(i32 %136, i32 %139)
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %124
  %148 = load i32, i32* @FCRTL, align 4
  %149 = call i32 @ew32(i32 %148, i32 0)
  %150 = load i32, i32* @FCRTH, align 4
  %151 = call i32 @ew32(i32 %150, i32 0)
  br label %182

152:                                              ; preds = %124
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %153, i32 0, i32 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %152
  %158 = load i32, i32* @FCRTL, align 4
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @E1000_FCRTL_XONE, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @ew32(i32 %158, i32 %163)
  %165 = load i32, i32* @FCRTH, align 4
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ew32(i32 %165, i32 %168)
  br label %181

170:                                              ; preds = %152
  %171 = load i32, i32* @FCRTL, align 4
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ew32(i32 %171, i32 %174)
  %176 = load i32, i32* @FCRTH, align 4
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ew32(i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %170, %157
  br label %182

182:                                              ; preds = %181, %147
  %183 = load i64, i64* %5, align 8
  store i64 %183, i64* %2, align 8
  br label %184

184:                                              ; preds = %182, %99, %18
  %185 = load i64, i64* %2, align 8
  ret i64 %185
}

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_setup_copper_link(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
