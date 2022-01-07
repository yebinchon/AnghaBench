; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6250_port_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6250_port_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32, i8*, i8* }

@MV88E6XXX_PORT_STS = common dso_local global i32 0, align 4
@MV88E6250_PORT_STS_PORTMODE_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@SPEED_UNKNOWN = common dso_local global i8* null, align 8
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@MV88E6250_PORT_STS_LINK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6250_port_link_state(%struct.mv88e6xxx_chip* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MV88E6XXX_PORT_STS, align 4
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %10, i32 %11, i32 %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %121

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %61

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MV88E6250_PORT_STS_PORTMODE_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %53 [
    i32 128, label %25
    i32 130, label %32
    i32 129, label %39
    i32 131, label %46
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** @SPEED_10, align 8
  %27 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %28 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @DUPLEX_HALF, align 8
  %30 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %31 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  br label %60

32:                                               ; preds = %21
  %33 = load i8*, i8** @SPEED_100, align 8
  %34 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %35 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @DUPLEX_HALF, align 8
  %37 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %38 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  br label %60

39:                                               ; preds = %21
  %40 = load i8*, i8** @SPEED_10, align 8
  %41 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %42 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @DUPLEX_FULL, align 8
  %44 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %45 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  br label %60

46:                                               ; preds = %21
  %47 = load i8*, i8** @SPEED_100, align 8
  %48 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @DUPLEX_FULL, align 8
  %51 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %52 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  br label %60

53:                                               ; preds = %21
  %54 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %55 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %56 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %58 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %59 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %46, %39, %32, %25
  br label %101

61:                                               ; preds = %18
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MV88E6250_PORT_STS_PORTMODE_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %93 [
    i32 132, label %65
    i32 134, label %72
    i32 133, label %79
    i32 135, label %86
  ]

65:                                               ; preds = %61
  %66 = load i8*, i8** @SPEED_10, align 8
  %67 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %68 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @DUPLEX_HALF, align 8
  %70 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %71 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %100

72:                                               ; preds = %61
  %73 = load i8*, i8** @SPEED_100, align 8
  %74 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %75 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @DUPLEX_HALF, align 8
  %77 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %78 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %100

79:                                               ; preds = %61
  %80 = load i8*, i8** @SPEED_10, align 8
  %81 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %82 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @DUPLEX_FULL, align 8
  %84 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %85 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %100

86:                                               ; preds = %61
  %87 = load i8*, i8** @SPEED_100, align 8
  %88 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %89 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @DUPLEX_FULL, align 8
  %91 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %92 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  br label %100

93:                                               ; preds = %61
  %94 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %95 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %96 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %98 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %99 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %86, %79, %72, %65
  br label %101

101:                                              ; preds = %100, %60
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @MV88E6250_PORT_STS_LINK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %110 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %112 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %114 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %117 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  %119 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %120 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %101, %16
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
