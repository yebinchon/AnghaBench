; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_write_txfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_write_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@CC2520_CMD_TXBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TX_FIFO cmd buf[0] = %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"status = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"buf[0] = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*, i32, i32*, i32)* @cc2520_write_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_write_txfifo(%struct.cc2520_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.cc2520_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca %struct.spi_transfer, align 8
  %13 = alloca %struct.spi_transfer, align 8
  %14 = alloca %struct.spi_transfer, align 8
  store %struct.cc2520_private* %0, %struct.cc2520_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %18 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %19 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %22 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %23 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32* %10, i32** %26, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 1
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = call i32 @spi_message_init(%struct.spi_message* %11)
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %11)
  %35 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %11)
  %36 = call i32 @spi_message_add_tail(%struct.spi_transfer* %14, %struct.spi_message* %11)
  %37 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %38 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @CC2520_CMD_TXBUF, align 4
  %41 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %42 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %40, i32* %48, align 4
  %49 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %50 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %54 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_vdbg(i32* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %60 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @spi_sync(%struct.TYPE_2__* %61, %struct.spi_message* %11)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %64 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_vdbg(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %4
  %76 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %77 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dev_vdbg(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %83 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %87 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_vdbg(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %93 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
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
