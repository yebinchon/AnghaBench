; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32*, i32 }

@FX2CMD_REG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*)* @pvr2_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_read_register(%struct.pvr2_hdw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @LOCK_TAKE(i32 %10)
  %12 = load i32, i32* @FX2CMD_REG_READ, align 4
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 0, i32* %32, align 4
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 7
  store i32 %45, i32* %49, align 4
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %55 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %50, i32* %53, i32 8, i32* %56, i32 4)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PVR2_COMPOSE_LE(i32* %62, i32 0)
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @LOCK_GIVE(i32 %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @PVR2_COMPOSE_LE(i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
