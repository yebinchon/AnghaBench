; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i64, i32, %struct.sm501_platdata*, i32, i64, i32, i32, i32 }
%struct.sm501_platdata = type { i64, i64, %struct.sm501_initdata* }
%struct.sm501_initdata = type { i32 }

@SM501_DEVICEID = common dso_local global i64 0, align 8
@SM501_DEVICEID_IDMASK = common dso_local global i64 0, align 8
@SM501_DEVICEID_SM501 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"incorrect device id %08lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i64 0, align 8
@SM501_DRAM_CONTROL = common dso_local global i64 0, align 8
@sm501_mem_local = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"SM501 At %p: Version %08lx, %ld Mb, IRQ %d\0A\00", align 1
@SM501_DEVICEID_REVMASK = common dso_local global i64 0, align 8
@dev_attr_dbg_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create debug regs file\0A\00", align 1
@SM501_USE_USB_HOST = common dso_local global i32 0, align 4
@SM501_USE_UART0 = common dso_local global i32 0, align 4
@SM501_USE_UART1 = common dso_local global i32 0, align 4
@SM501_USE_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"no gpio available for i2c gpio.\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"M1X and M clocks sourced from different PLLs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*)* @sm501_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_init_dev(%struct.sm501_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sm501_devdata*, align 8
  %4 = alloca %struct.sm501_initdata*, align 8
  %5 = alloca %struct.sm501_platdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %3, align 8
  %10 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %10, i32 0, i32 7
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %13, i32 0, i32 6
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %16, i32 0, i32 5
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SM501_DEVICEID, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @smc501_readl(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @SM501_DEVICEID_IDMASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @SM501_DEVICEID_SM501, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %186

38:                                               ; preds = %1
  %39 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SM501_IRQ_MASK, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @smc501_writel(i32 0, i64 %43)
  %45 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SM501_DRAM_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @smc501_readl(i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64*, i64** @sm501_mem_local, align 8
  %52 = load i64, i64* %7, align 8
  %53 = lshr i64 %52, 13
  %54 = and i64 %53, 7
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %61 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = lshr i64 %64, 20
  %66 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %67 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63, i64 %65, i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @SM501_DEVICEID_REVMASK, align 8
  %72 = and i64 %70, %71
  %73 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %74 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %76 = call i32 @sm501_dump_gate(%struct.sm501_devdata* %75)
  %77 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %78 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @device_create_file(i32 %79, i32* @dev_attr_dbg_regs)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %38
  %84 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %85 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %38
  %89 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %90 = call i32 @sm501_dump_clk(%struct.sm501_devdata* %89)
  %91 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %92 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %91, i32 0, i32 2
  %93 = load %struct.sm501_platdata*, %struct.sm501_platdata** %92, align 8
  store %struct.sm501_platdata* %93, %struct.sm501_platdata** %5, align 8
  %94 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %95 = icmp ne %struct.sm501_platdata* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %98 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %97, i32 0, i32 2
  %99 = load %struct.sm501_initdata*, %struct.sm501_initdata** %98, align 8
  br label %101

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi %struct.sm501_initdata* [ %99, %96 ], [ null, %100 ]
  store %struct.sm501_initdata* %102, %struct.sm501_initdata** %4, align 8
  %103 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %104 = icmp ne %struct.sm501_initdata* %103, null
  br i1 %104, label %105, label %144

105:                                              ; preds = %101
  %106 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %107 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %108 = call i32 @sm501_init_regs(%struct.sm501_devdata* %106, %struct.sm501_initdata* %107)
  %109 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %110 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SM501_USE_USB_HOST, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %117 = call i32 @sm501_register_usbhost(%struct.sm501_devdata* %116, i64* %6)
  br label %118

118:                                              ; preds = %115, %105
  %119 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %120 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SM501_USE_UART0, align 4
  %123 = load i32, i32* @SM501_USE_UART1, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %129 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %130 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sm501_register_uart(%struct.sm501_devdata* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %118
  %134 = load %struct.sm501_initdata*, %struct.sm501_initdata** %4, align 8
  %135 = getelementptr inbounds %struct.sm501_initdata, %struct.sm501_initdata* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SM501_USE_GPIO, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %142 = call i32 @sm501_register_gpio(%struct.sm501_devdata* %141)
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143, %101
  %145 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %146 = icmp ne %struct.sm501_platdata* %145, null
  br i1 %146, label %147, label %171

147:                                              ; preds = %144
  %148 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %149 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %154 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %159 = call i32 @sm501_gpio_isregistered(%struct.sm501_devdata* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %163 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @dev_err(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %170

166:                                              ; preds = %157
  %167 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %168 = load %struct.sm501_platdata*, %struct.sm501_platdata** %5, align 8
  %169 = call i32 @sm501_register_gpio_i2c(%struct.sm501_devdata* %167, %struct.sm501_platdata* %168)
  br label %170

170:                                              ; preds = %166, %161
  br label %171

171:                                              ; preds = %170, %152, %147, %144
  %172 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %173 = call i32 @sm501_check_clocks(%struct.sm501_devdata* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %178 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @dev_err(i32 %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %2, align 4
  br label %186

183:                                              ; preds = %171
  %184 = load %struct.sm501_devdata*, %struct.sm501_devdata** %3, align 8
  %185 = call i32 @sm501_register_display(%struct.sm501_devdata* %184, i64* %6)
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %176, %30
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @smc501_writel(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @sm501_dump_gate(%struct.sm501_devdata*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @sm501_dump_clk(%struct.sm501_devdata*) #1

declare dso_local i32 @sm501_init_regs(%struct.sm501_devdata*, %struct.sm501_initdata*) #1

declare dso_local i32 @sm501_register_usbhost(%struct.sm501_devdata*, i64*) #1

declare dso_local i32 @sm501_register_uart(%struct.sm501_devdata*, i32) #1

declare dso_local i32 @sm501_register_gpio(%struct.sm501_devdata*) #1

declare dso_local i32 @sm501_gpio_isregistered(%struct.sm501_devdata*) #1

declare dso_local i32 @sm501_register_gpio_i2c(%struct.sm501_devdata*, %struct.sm501_platdata*) #1

declare dso_local i32 @sm501_check_clocks(%struct.sm501_devdata*) #1

declare dso_local i32 @sm501_register_display(%struct.sm501_devdata*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
