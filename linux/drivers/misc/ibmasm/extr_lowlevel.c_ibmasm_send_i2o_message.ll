; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_lowlevel.c_ibmasm_send_i2o_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_lowlevel.c_ibmasm_send_i2o_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.service_processor = type { i32, %struct.command* }
%struct.command = type { %struct.TYPE_4__* }
%struct.i2o_message = type { i32, i32 }

@header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_send_i2o_message(%struct.service_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.service_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_message*, align 8
  %7 = alloca %struct.command*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %3, align 8
  %8 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %9 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %8, i32 0, i32 1
  %10 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %10, %struct.command** %7, align 8
  %11 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %12 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @get_mfa_inbound(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.command*, %struct.command** %7, align 8
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @get_dot_command_size(%struct.TYPE_4__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @outgoing_message_size(i32 %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 0), align 4
  %25 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %26 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.i2o_message* @get_i2o_message(i32 %27, i32 %28)
  store %struct.i2o_message* %29, %struct.i2o_message** %6, align 8
  %30 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %31 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %30, i32 0, i32 1
  %32 = call i32 @memcpy_toio(i32* %31, %struct.TYPE_4__* @header, i32 4)
  %33 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %34 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %33, i32 0, i32 0
  %35 = load %struct.command*, %struct.command** %7, align 8
  %36 = getelementptr inbounds %struct.command, %struct.command* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @memcpy_toio(i32* %34, %struct.TYPE_4__* %37, i32 %38)
  %40 = load %struct.service_processor*, %struct.service_processor** %3, align 8
  %41 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @set_mfa_inbound(i32 %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %18, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @get_mfa_inbound(i32) #1

declare dso_local i32 @get_dot_command_size(%struct.TYPE_4__*) #1

declare dso_local i32 @outgoing_message_size(i32) #1

declare dso_local %struct.i2o_message* @get_i2o_message(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_mfa_inbound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
