; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_copy_to_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_copy_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@AUTOINCflag = common dso_local global i32 0, align 4
@COM20020_REG_W_ADDR_HI = common dso_local global i32 0, align 4
@COM20020_REG_W_ADDR_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"outsb\00", align 1
@COM20020_REG_RW_MEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i8*, i32)* @com20020_copy_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_copy_to_card(%struct.net_device* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 512, %16
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* @AUTOINCflag, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @COM20020_REG_W_ADDR_HI, align 4
  %26 = call i32 @arcnet_outb(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @COM20020_REG_W_ADDR_LO, align 4
  %31 = call i32 @arcnet_outb(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @COM20020_REG_RW_MEMDATA, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @arcnet_outsb(i32 %34, i32 %35, i8* %36, i32 %37)
  %39 = call i32 @TIME(%struct.net_device* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  ret void
}

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @TIME(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @arcnet_outsb(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
