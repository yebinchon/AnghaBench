; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_t3_mc5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_t3_mc5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i32, i64, i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@MAX_ROUTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_MC5_DB_CONFIG = common dso_local global i32 0, align 4
@F_TMMODE = common dso_local global i32 0, align 4
@MC5_MODE_72_BIT = common dso_local global i64 0, align 8
@F_TMRST = common dso_local global i32 0, align 4
@F_TMRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TCAM reset timed out\0A\00", align 1
@A_MC5_DB_ROUTING_TABLE_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_FILTER_TABLE = common dso_local global i32 0, align 4
@A_MC5_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_REQ_ADDR1 = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_REQ_ADDR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported TCAM type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mc5_init(%struct.mc5* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.adapter*, align 8
  store %struct.mc5* %0, %struct.mc5** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mc5*, %struct.mc5** %6, align 8
  %15 = getelementptr inbounds %struct.mc5, %struct.mc5* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.mc5*, %struct.mc5** %6, align 8
  %18 = getelementptr inbounds %struct.mc5, %struct.mc5* %17, i32 0, i32 4
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %13, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %124

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MAX_ROUTES, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %124

38:                                               ; preds = %27
  %39 = load %struct.adapter*, %struct.adapter** %13, align 8
  %40 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %41 = call i32 @t3_read_reg(%struct.adapter* %39, i32 %40)
  %42 = load i32, i32* @F_TMMODE, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mc5*, %struct.mc5** %6, align 8
  %46 = getelementptr inbounds %struct.mc5, %struct.mc5* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MC5_MODE_72_BIT, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @V_TMMODE(i32 %50)
  %52 = load i32, i32* @F_TMRST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.adapter*, %struct.adapter** %13, align 8
  %57 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @t3_write_reg(%struct.adapter* %56, i32 %57, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %13, align 8
  %61 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %62 = load i32, i32* @F_TMRDY, align 4
  %63 = call i64 @t3_wait_op_done(%struct.adapter* %60, i32 %61, i32 %62, i32 1, i32 500, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load %struct.adapter*, %struct.adapter** %13, align 8
  %67 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %124

68:                                               ; preds = %38
  %69 = load %struct.adapter*, %struct.adapter** %13, align 8
  %70 = load i32, i32* @A_MC5_DB_ROUTING_TABLE_INDEX, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %71, %72
  %74 = call i32 @t3_write_reg(%struct.adapter* %69, i32 %70, i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %13, align 8
  %76 = load i32, i32* @A_MC5_DB_FILTER_TABLE, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @t3_write_reg(%struct.adapter* %75, i32 %76, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %13, align 8
  %84 = load i32, i32* @A_MC5_DB_SERVER_INDEX, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = sub i32 %89, %90
  %92 = call i32 @t3_write_reg(%struct.adapter* %83, i32 %84, i32 %91)
  %93 = load %struct.mc5*, %struct.mc5** %6, align 8
  %94 = getelementptr inbounds %struct.mc5, %struct.mc5* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.adapter*, %struct.adapter** %13, align 8
  %96 = load i32, i32* @A_MC5_DB_DBGI_REQ_ADDR1, align 4
  %97 = call i32 @t3_write_reg(%struct.adapter* %95, i32 %96, i32 0)
  %98 = load %struct.adapter*, %struct.adapter** %13, align 8
  %99 = load i32, i32* @A_MC5_DB_DBGI_REQ_ADDR2, align 4
  %100 = call i32 @t3_write_reg(%struct.adapter* %98, i32 %99, i32 0)
  %101 = load %struct.mc5*, %struct.mc5** %6, align 8
  %102 = call i32 @mc5_dbgi_mode_enable(%struct.mc5* %101)
  %103 = load %struct.mc5*, %struct.mc5** %6, align 8
  %104 = getelementptr inbounds %struct.mc5, %struct.mc5* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %112 [
    i32 128, label %106
    i32 129, label %109
  ]

106:                                              ; preds = %68
  %107 = load %struct.mc5*, %struct.mc5** %6, align 8
  %108 = call i32 @init_idt52100(%struct.mc5* %107)
  store i32 %108, i32* %11, align 4
  br label %120

109:                                              ; preds = %68
  %110 = load %struct.mc5*, %struct.mc5** %6, align 8
  %111 = call i32 @init_idt43102(%struct.mc5* %110)
  store i32 %111, i32* %11, align 4
  br label %120

112:                                              ; preds = %68
  %113 = load %struct.adapter*, %struct.adapter** %13, align 8
  %114 = load %struct.mc5*, %struct.mc5** %6, align 8
  %115 = getelementptr inbounds %struct.mc5, %struct.mc5* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %112, %109, %106
  %121 = load %struct.mc5*, %struct.mc5** %6, align 8
  %122 = call i32 @mc5_dbgi_mode_disable(%struct.mc5* %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %65, %35, %22
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @V_TMMODE(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i64 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @mc5_dbgi_mode_enable(%struct.mc5*) #1

declare dso_local i32 @init_idt52100(%struct.mc5*) #1

declare dso_local i32 @init_idt43102(%struct.mc5*) #1

declare dso_local i32 @mc5_dbgi_mode_disable(%struct.mc5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
