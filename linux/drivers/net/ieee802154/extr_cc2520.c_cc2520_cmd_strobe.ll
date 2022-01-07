; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_cmd_strobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_cmd_strobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"command strobe buf[0] = %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buf[0] = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*, i32)* @cc2520_cmd_strobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_cmd_strobe(%struct.cc2520_private* %0, i32 %1) #0 {
  %3 = alloca %struct.cc2520_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  store %struct.cc2520_private* %0, %struct.cc2520_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %6, align 4
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %10 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %11 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  %14 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %15 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = call i32 @spi_message_init(%struct.spi_message* %7)
  %19 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %20 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %21 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %25 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32 %23, i32* %31, align 4
  %32 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %33 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %37 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_vdbg(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %43 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @spi_sync(%struct.TYPE_2__* %44, %struct.spi_message* %7)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %2
  %49 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %50 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %2
  %55 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %56 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %60 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_vdbg(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %66 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
