; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cc2520_platform_data = type { i32 }

@CC2520_FSMSTAT1 = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"oscillator start failed!\0A\00", align 1
@CC2520_STATUS_XOSC32M_STABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"oscillator brought up\0A\00", align 1
@CC2520_AGCCTRL1 = common dso_local global i32 0, align 4
@CC2520_GPIOCTRL0 = common dso_local global i32 0, align 4
@CC2520_GPIOCTRL5 = common dso_local global i32 0, align 4
@CC2520_GPIOPOLARITY = common dso_local global i32 0, align 4
@CC2520_TXCTRL = common dso_local global i32 0, align 4
@CC2520_CCACTRL0 = common dso_local global i32 0, align 4
@CC2520_MDMCTRL0 = common dso_local global i32 0, align 4
@CC2520_MDMCTRL1 = common dso_local global i32 0, align 4
@CC2520_RXCTRL = common dso_local global i32 0, align 4
@CC2520_FSCTRL = common dso_local global i32 0, align 4
@CC2520_FSCAL1 = common dso_local global i32 0, align 4
@CC2520_ADCTEST0 = common dso_local global i32 0, align 4
@CC2520_ADCTEST1 = common dso_local global i32 0, align 4
@CC2520_ADCTEST2 = common dso_local global i32 0, align 4
@CC2520_FRMCTRL1 = common dso_local global i32 0, align 4
@FRMCTRL1_SET_RXENMASK_ON_TX = common dso_local global i32 0, align 4
@FRMCTRL1_IGNORE_TX_UNDERF = common dso_local global i32 0, align 4
@CC2520_FIFOPCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*)* @cc2520_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_hw_init(%struct.cc2520_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc2520_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cc2520_platform_data, align 4
  store %struct.cc2520_private* %0, %struct.cc2520_private** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 255, i64* %5, align 8
  store i32 100, i32* %7, align 4
  %9 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %10 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @cc2520_get_platform_data(%struct.TYPE_2__* %11, %struct.cc2520_platform_data* %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %191

16:                                               ; preds = %1
  %17 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %18 = load i32, i32* @CC2520_FSMSTAT1, align 4
  %19 = call i32 @cc2520_read_register(%struct.cc2520_private* %17, i32 %18, i64* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %191

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @STATE_IDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %193

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %50, %30
  %32 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %33 = call i32 @cc2520_get_status(%struct.cc2520_private* %32, i64* %4)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %191

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = icmp sle i32 %38, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %43 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %193

48:                                               ; preds = %37
  %49 = call i32 @udelay(i32 1)
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @CC2520_STATUS_XOSC32M_STABLE, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %31, label %56

56:                                               ; preds = %50
  %57 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %58 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_vdbg(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %63 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %56
  %67 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %68 = load i32, i32* @CC2520_AGCCTRL1, align 4
  %69 = call i32 @cc2520_write_register(%struct.cc2520_private* %67, i32 %68, i32 22)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %191

73:                                               ; preds = %66
  %74 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %75 = load i32, i32* @CC2520_GPIOCTRL0, align 4
  %76 = call i32 @cc2520_write_register(%struct.cc2520_private* %74, i32 %75, i32 70)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %191

80:                                               ; preds = %73
  %81 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %82 = load i32, i32* @CC2520_GPIOCTRL5, align 4
  %83 = call i32 @cc2520_write_register(%struct.cc2520_private* %81, i32 %82, i32 71)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %191

87:                                               ; preds = %80
  %88 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %89 = load i32, i32* @CC2520_GPIOPOLARITY, align 4
  %90 = call i32 @cc2520_write_register(%struct.cc2520_private* %88, i32 %89, i32 30)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %191

94:                                               ; preds = %87
  %95 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %96 = load i32, i32* @CC2520_TXCTRL, align 4
  %97 = call i32 @cc2520_write_register(%struct.cc2520_private* %95, i32 %96, i32 193)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %191

101:                                              ; preds = %94
  br label %110

102:                                              ; preds = %56
  %103 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %104 = load i32, i32* @CC2520_AGCCTRL1, align 4
  %105 = call i32 @cc2520_write_register(%struct.cc2520_private* %103, i32 %104, i32 17)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %191

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %101
  %111 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %112 = load i32, i32* @CC2520_CCACTRL0, align 4
  %113 = call i32 @cc2520_write_register(%struct.cc2520_private* %111, i32 %112, i32 26)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %191

117:                                              ; preds = %110
  %118 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %119 = load i32, i32* @CC2520_MDMCTRL0, align 4
  %120 = call i32 @cc2520_write_register(%struct.cc2520_private* %118, i32 %119, i32 133)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %191

124:                                              ; preds = %117
  %125 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %126 = load i32, i32* @CC2520_MDMCTRL1, align 4
  %127 = call i32 @cc2520_write_register(%struct.cc2520_private* %125, i32 %126, i32 20)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %191

131:                                              ; preds = %124
  %132 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %133 = load i32, i32* @CC2520_RXCTRL, align 4
  %134 = call i32 @cc2520_write_register(%struct.cc2520_private* %132, i32 %133, i32 63)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %191

138:                                              ; preds = %131
  %139 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %140 = load i32, i32* @CC2520_FSCTRL, align 4
  %141 = call i32 @cc2520_write_register(%struct.cc2520_private* %139, i32 %140, i32 90)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %191

145:                                              ; preds = %138
  %146 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %147 = load i32, i32* @CC2520_FSCAL1, align 4
  %148 = call i32 @cc2520_write_register(%struct.cc2520_private* %146, i32 %147, i32 43)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %191

152:                                              ; preds = %145
  %153 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %154 = load i32, i32* @CC2520_ADCTEST0, align 4
  %155 = call i32 @cc2520_write_register(%struct.cc2520_private* %153, i32 %154, i32 16)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %191

159:                                              ; preds = %152
  %160 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %161 = load i32, i32* @CC2520_ADCTEST1, align 4
  %162 = call i32 @cc2520_write_register(%struct.cc2520_private* %160, i32 %161, i32 14)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %191

166:                                              ; preds = %159
  %167 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %168 = load i32, i32* @CC2520_ADCTEST2, align 4
  %169 = call i32 @cc2520_write_register(%struct.cc2520_private* %167, i32 %168, i32 3)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %191

173:                                              ; preds = %166
  %174 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %175 = load i32, i32* @CC2520_FRMCTRL1, align 4
  %176 = load i32, i32* @FRMCTRL1_SET_RXENMASK_ON_TX, align 4
  %177 = load i32, i32* @FRMCTRL1_IGNORE_TX_UNDERF, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @cc2520_write_register(%struct.cc2520_private* %174, i32 %175, i32 %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %191

183:                                              ; preds = %173
  %184 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %185 = load i32, i32* @CC2520_FIFOPCTRL, align 4
  %186 = call i32 @cc2520_write_register(%struct.cc2520_private* %184, i32 %185, i32 127)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %191

190:                                              ; preds = %183
  store i32 0, i32* %2, align 4
  br label %193

191:                                              ; preds = %189, %182, %172, %165, %158, %151, %144, %137, %130, %123, %116, %108, %100, %93, %86, %79, %72, %36, %22, %15
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %190, %41, %27
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @cc2520_get_platform_data(%struct.TYPE_2__*, %struct.cc2520_platform_data*) #1

declare dso_local i32 @cc2520_read_register(%struct.cc2520_private*, i32, i64*) #1

declare dso_local i32 @cc2520_get_status(%struct.cc2520_private*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*) #1

declare dso_local i32 @cc2520_write_register(%struct.cc2520_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
