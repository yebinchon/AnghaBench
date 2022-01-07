; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_send_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_send_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32 }
%struct.ican3_msg = type { i32*, i32, i32 }

@MSG_INQUIRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, i32)* @ican3_send_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_send_inquiry(%struct.ican3_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ican3_msg, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.ican3_msg* %5, i32 0, i32 16)
  %7 = load i32, i32* @MSG_INQUIRY, align 4
  %8 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = call i32 @cpu_to_le16(i32 2)
  %10 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %5, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %5, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %19 = call i32 @ican3_send_msg(%struct.ican3_dev* %18, %struct.ican3_msg* %5)
  ret i32 %19
}

declare dso_local i32 @memset(%struct.ican3_msg*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ican3_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
