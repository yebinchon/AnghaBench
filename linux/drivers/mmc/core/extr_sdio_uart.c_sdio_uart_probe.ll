; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_uart.c_sdio_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i64, i32, %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { i32, i32, i32*, %struct.sdio_func_tuple* }
%struct.sdio_device_id = type { i32 }
%struct.sdio_uart_port = type { i32, i32, i32, %struct.TYPE_3__, %struct.sdio_func* }
%struct.TYPE_3__ = type { i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDIO_CLASS_UART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: need info on UART class basic setup\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@SDIO_CLASS_GPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"%s: can't find tuple 0x91 subtuple 0 (SUBTPL_SIOREG) for GPS class\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: Register ID = 0x%02x, Exp ID = 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: regs offset = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: clk %d baudcode %u 4800-div %u\0A\00", align 1
@sdio_uart_port_ops = common dso_local global i32 0, align 4
@sdio_uart_tty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @sdio_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.sdio_uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdio_func_tuple*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sdio_uart_port* @kzalloc(i32 32, i32 %10)
  store %struct.sdio_uart_port* %11, %struct.sdio_uart_port** %6, align 8
  %12 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %13 = icmp ne %struct.sdio_uart_port* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %208

17:                                               ; preds = %2
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDIO_CLASS_UART, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %25 = call i32 @sdio_func_id(%struct.sdio_func* %24)
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %28 = call i32 @kfree(%struct.sdio_uart_port* %27)
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %208

31:                                               ; preds = %17
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SDIO_CLASS_GPS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %161

37:                                               ; preds = %31
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 2
  %40 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %39, align 8
  store %struct.sdio_func_tuple* %40, %struct.sdio_func_tuple** %8, align 8
  br label %41

41:                                               ; preds = %65, %37
  %42 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %43 = icmp ne %struct.sdio_func_tuple* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %46 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 145
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %65

50:                                               ; preds = %44
  %51 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %52 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %65

56:                                               ; preds = %50
  %57 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %58 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %69

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %55, %49
  %66 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %67 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %66, i32 0, i32 3
  %68 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %67, align 8
  store %struct.sdio_func_tuple* %68, %struct.sdio_func_tuple** %8, align 8
  br label %41

69:                                               ; preds = %63, %41
  %70 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %71 = icmp ne %struct.sdio_func_tuple* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %74 = call i32 @sdio_func_id(%struct.sdio_func* %73)
  %75 = call i32 @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %77 = call i32 @kfree(%struct.sdio_uart_port* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %208

80:                                               ; preds = %69
  %81 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %82 = call i32 @sdio_func_id(%struct.sdio_func* %81)
  %83 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %84 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %89 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %87, i32 %92)
  %94 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %95 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 0
  %100 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %101 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %99, %105
  %107 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %108 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %106, %112
  %114 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %115 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %117 = call i32 @sdio_func_id(%struct.sdio_func* %116)
  %118 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %119 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %123 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 115200
  %128 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %129 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %131 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %80
  %135 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %136 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %135, i32 0, i32 1
  store i32 115200, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %80
  %138 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %139 = call i32 @sdio_func_id(%struct.sdio_func* %138)
  %140 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %141 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %144 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %149 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 8
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %154 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 9
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = or i32 %152, %158
  %160 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142, i32 %147, i32 %159)
  br label %166

161:                                              ; preds = %31
  %162 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %163 = call i32 @kfree(%struct.sdio_uart_port* %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %208

166:                                              ; preds = %137
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %169 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %170 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %169, i32 0, i32 4
  store %struct.sdio_func* %168, %struct.sdio_func** %170, align 8
  %171 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %172 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %173 = call i32 @sdio_set_drvdata(%struct.sdio_func* %171, %struct.sdio_uart_port* %172)
  %174 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %175 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %174, i32 0, i32 3
  %176 = call i32 @tty_port_init(%struct.TYPE_3__* %175)
  %177 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %178 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32* @sdio_uart_port_ops, i32** %179, align 8
  %180 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %181 = call i32 @sdio_uart_add_port(%struct.sdio_uart_port* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %167
  %185 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %186 = call i32 @kfree(%struct.sdio_uart_port* %185)
  br label %206

187:                                              ; preds = %167
  %188 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %189 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %188, i32 0, i32 3
  %190 = load i32, i32* @sdio_uart_tty_driver, align 4
  %191 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %192 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %195 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %194, i32 0, i32 1
  %196 = call %struct.device* @tty_port_register_device(%struct.TYPE_3__* %189, i32 %190, i32 %193, i32* %195)
  store %struct.device* %196, %struct.device** %9, align 8
  %197 = load %struct.device*, %struct.device** %9, align 8
  %198 = call i64 @IS_ERR(%struct.device* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %187
  %201 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %202 = call i32 @sdio_uart_port_remove(%struct.sdio_uart_port* %201)
  %203 = load %struct.device*, %struct.device** %9, align 8
  %204 = call i32 @PTR_ERR(%struct.device* %203)
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %200, %187
  br label %206

206:                                              ; preds = %205, %184
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %161, %72, %23, %14
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.sdio_uart_port* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.sdio_uart_port*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.sdio_uart_port*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_3__*) #1

declare dso_local i32 @sdio_uart_add_port(%struct.sdio_uart_port*) #1

declare dso_local %struct.device* @tty_port_register_device(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @sdio_uart_port_remove(%struct.sdio_uart_port*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
