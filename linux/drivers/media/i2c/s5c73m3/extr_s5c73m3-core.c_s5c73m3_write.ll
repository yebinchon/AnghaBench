; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@REG_CMDWR_ADDRH = common dso_local global i32 0, align 4
@REG_CMDWR_ADDRL = common dso_local global i32 0, align 4
@REG_CMDBUF_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5c73m3_write(%struct.s5c73m3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5c73m3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %11 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %15 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = xor i32 %13, %16
  %18 = and i32 %17, -65536
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %22 = load i32, i32* @REG_CMDWR_ADDRH, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 16
  %25 = call i32 @s5c73m3_i2c_write(%struct.i2c_client* %21, i32 %22, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %30 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %72

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %36 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = xor i32 %34, %37
  %39 = and i32 %38, 65535
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = load i32, i32* @REG_CMDWR_ADDRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 65535
  %46 = call i32 @s5c73m3_i2c_write(%struct.i2c_client* %42, i32 %43, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %51 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %72

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %57 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %59 = load i32, i32* @REG_CMDBUF_ADDR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @s5c73m3_i2c_write(%struct.i2c_client* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %54
  %67 = load %struct.s5c73m3*, %struct.s5c73m3** %5, align 8
  %68 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %64, %49, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @s5c73m3_i2c_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
