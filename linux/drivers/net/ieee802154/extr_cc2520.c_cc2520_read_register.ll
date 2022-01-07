; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@CC2520_CMD_MEMORY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"spi status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*, i32, i32*)* @cc2520_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_read_register(%struct.cc2520_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cc2520_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_transfer, align 8
  store %struct.cc2520_private* %0, %struct.cc2520_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %13 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %14 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 2
  %17 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %18 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = call i32 @spi_message_init(%struct.spi_message* %8)
  %25 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %26 = call i32 @spi_message_add_tail(%struct.spi_transfer* %10, %struct.spi_message* %8)
  %27 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %28 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* @CC2520_CMD_MEMORY_READ, align 4
  %31 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %32 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %30, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %41 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %39, i32* %47, align 4
  %48 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %49 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @spi_sync(%struct.TYPE_2__* %50, %struct.spi_message* %8)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %53 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %3
  %62 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %3
  %65 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %66 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
