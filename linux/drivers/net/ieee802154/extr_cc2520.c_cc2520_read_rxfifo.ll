; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_read_rxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_read_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@CC2520_CMD_RXBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"read rxfifo buf[0] = %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buf[1] = %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"status = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"return status buf[0] = %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"length buf[1] = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*, i32*, i32)* @cc2520_read_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_read_rxfifo(%struct.cc2520_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cc2520_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_transfer, align 8
  store %struct.cc2520_private* %0, %struct.cc2520_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %13 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %14 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %17 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %18 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %23, align 8
  %25 = call i32 @spi_message_init(%struct.spi_message* %8)
  %26 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %27 = call i32 @spi_message_add_tail(%struct.spi_transfer* %10, %struct.spi_message* %8)
  %28 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %29 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @CC2520_CMD_RXBUF, align 4
  %32 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %33 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32 %31, i32* %39, align 4
  %40 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %41 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %45 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_vdbg(i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %51 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %55 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_vdbg(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %61 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @spi_sync(%struct.TYPE_2__* %62, %struct.spi_message* %8)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %65 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_vdbg(i32* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %3
  %77 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %78 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_vdbg(i32* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %84 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %88 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_vdbg(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %94 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %98 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_vdbg(i32* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %104 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %7, align 4
  ret i32 %106
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
