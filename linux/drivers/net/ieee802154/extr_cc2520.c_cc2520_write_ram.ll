; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_write_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_write_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@CC2520_CMD_MEMORY_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"spi status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*, i32, i32, i32*)* @cc2520_write_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_write_ram(%struct.cc2520_private* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cc2520_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca %struct.spi_transfer, align 8
  store %struct.cc2520_private* %0, %struct.cc2520_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %15 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %16 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %19 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %20 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %18, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %28 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* @CC2520_CMD_MEMORY_WRITE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = or i32 %30, %33
  %35 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %36 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %34, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %46 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %44, i32* %52, align 4
  %53 = call i32 @spi_message_init(%struct.spi_message* %10)
  %54 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %10)
  %55 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %10)
  %56 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %57 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @spi_sync(%struct.TYPE_2__* %58, %struct.spi_message* %10)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %61 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %4
  %70 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %4
  %73 = load %struct.cc2520_private*, %struct.cc2520_private** %5, align 8
  %74 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
