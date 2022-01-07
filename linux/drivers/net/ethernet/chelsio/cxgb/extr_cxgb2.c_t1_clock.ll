; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_t1_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@HCLOCK = common dso_local global i32 0, align 4
@LCLOCK = common dso_local global i32 0, align 4
@A_ELMER0_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @t1_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_clock(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = call i32 @t1_is_T1B(%struct.adapter* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %157

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %157

20:                                               ; preds = %15
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EALREADY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %157

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 1
  %34 = load i32, i32* @HCLOCK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  store i32 20, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %37 = load i32, i32* @HCLOCK, align 4
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %31
  store i32 14, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %41 = load i32, i32* @LCLOCK, align 4
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @A_ELMER0_GPO, align 4
  %50 = call i32 @__t1_tpi_read(%struct.adapter* %48, i32 %49, i32* %6)
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 131072
  store i32 %52, i32* %6, align 4
  %53 = call i32 @udelay(i32 50)
  %54 = load %struct.adapter*, %struct.adapter** %4, align 8
  %55 = load i32, i32* @A_ELMER0_GPO, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @__t1_tpi_write(%struct.adapter* %54, i32 %55, i32 %56)
  %58 = call i32 @udelay(i32 50)
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = load i32, i32* @A_ELMER0_GPO, align 4
  %61 = call i32 @__t1_tpi_read(%struct.adapter* %59, i32 %60, i32* %6)
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, -65
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, -9
  store i32 %65, i32* %6, align 4
  %66 = load %struct.adapter*, %struct.adapter** %4, align 8
  %67 = load i32, i32* @A_ELMER0_GPO, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @__t1_tpi_write(%struct.adapter* %66, i32 %67, i32 %68)
  %70 = call i32 @udelay(i32 50)
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = call i32 @bit_bang(%struct.adapter* %71, i32 0, i32 2)
  %73 = load %struct.adapter*, %struct.adapter** %4, align 8
  %74 = call i32 @bit_bang(%struct.adapter* %73, i32 0, i32 2)
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @bit_bang(%struct.adapter* %75, i32 %76, i32 9)
  %78 = call i32 @udelay(i32 50)
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = load i32, i32* @A_ELMER0_GPO, align 4
  %81 = call i32 @__t1_tpi_read(%struct.adapter* %79, i32 %80, i32* %6)
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, 64
  store i32 %83, i32* %6, align 4
  %84 = call i32 @udelay(i32 50)
  %85 = load %struct.adapter*, %struct.adapter** %4, align 8
  %86 = load i32, i32* @A_ELMER0_GPO, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @__t1_tpi_write(%struct.adapter* %85, i32 %86, i32 %87)
  %89 = call i32 @udelay(i32 50)
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = load i32, i32* @A_ELMER0_GPO, align 4
  %92 = call i32 @__t1_tpi_read(%struct.adapter* %90, i32 %91, i32* %6)
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, -65
  store i32 %94, i32* %6, align 4
  %95 = call i32 @udelay(i32 50)
  %96 = load %struct.adapter*, %struct.adapter** %4, align 8
  %97 = load i32, i32* @A_ELMER0_GPO, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @__t1_tpi_write(%struct.adapter* %96, i32 %97, i32 %98)
  %100 = call i32 @udelay(i32 50)
  %101 = load %struct.adapter*, %struct.adapter** %4, align 8
  %102 = load i32, i32* @A_ELMER0_GPO, align 4
  %103 = call i32 @__t1_tpi_read(%struct.adapter* %101, i32 %102, i32* %6)
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, 131072
  store i32 %105, i32* %6, align 4
  %106 = call i32 @udelay(i32 50)
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = load i32, i32* @A_ELMER0_GPO, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @__t1_tpi_write(%struct.adapter* %107, i32 %108, i32 %109)
  %111 = call i32 @udelay(i32 50)
  %112 = load %struct.adapter*, %struct.adapter** %4, align 8
  %113 = load i32, i32* @A_ELMER0_GPO, align 4
  %114 = call i32 @__t1_tpi_read(%struct.adapter* %112, i32 %113, i32* %6)
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, -33
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, -9
  store i32 %118, i32* %6, align 4
  %119 = call i32 @udelay(i32 50)
  %120 = load %struct.adapter*, %struct.adapter** %4, align 8
  %121 = load i32, i32* @A_ELMER0_GPO, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @__t1_tpi_write(%struct.adapter* %120, i32 %121, i32 %122)
  %124 = call i32 @udelay(i32 50)
  %125 = load %struct.adapter*, %struct.adapter** %4, align 8
  %126 = call i32 @bit_bang(%struct.adapter* %125, i32 0, i32 2)
  %127 = load %struct.adapter*, %struct.adapter** %4, align 8
  %128 = call i32 @bit_bang(%struct.adapter* %127, i32 0, i32 2)
  %129 = load %struct.adapter*, %struct.adapter** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @bit_bang(%struct.adapter* %129, i32 %130, i32 9)
  %132 = call i32 @udelay(i32 50)
  %133 = load %struct.adapter*, %struct.adapter** %4, align 8
  %134 = load i32, i32* @A_ELMER0_GPO, align 4
  %135 = call i32 @__t1_tpi_read(%struct.adapter* %133, i32 %134, i32* %6)
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, 32
  store i32 %137, i32* %6, align 4
  %138 = call i32 @udelay(i32 50)
  %139 = load %struct.adapter*, %struct.adapter** %4, align 8
  %140 = load i32, i32* @A_ELMER0_GPO, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @__t1_tpi_write(%struct.adapter* %139, i32 %140, i32 %141)
  %143 = call i32 @udelay(i32 50)
  %144 = load %struct.adapter*, %struct.adapter** %4, align 8
  %145 = load i32, i32* @A_ELMER0_GPO, align 4
  %146 = call i32 @__t1_tpi_read(%struct.adapter* %144, i32 %145, i32* %6)
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, -33
  store i32 %148, i32* %6, align 4
  %149 = call i32 @udelay(i32 50)
  %150 = load %struct.adapter*, %struct.adapter** %4, align 8
  %151 = load i32, i32* @A_ELMER0_GPO, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @__t1_tpi_write(%struct.adapter* %150, i32 %151, i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %4, align 8
  %155 = getelementptr inbounds %struct.adapter, %struct.adapter* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock(i32* %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %44, %28, %19, %12
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @t1_is_T1B(%struct.adapter*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__t1_tpi_read(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__t1_tpi_write(%struct.adapter*, i32, i32) #1

declare dso_local i32 @bit_bang(%struct.adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
